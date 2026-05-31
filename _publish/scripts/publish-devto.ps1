[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)] [string] $ArticlePath,
  [string] $CanonicalUrl,
  [string[]] $Tags,
  [string] $MainImage,
  [switch] $Publish,
  [switch] $DryRun
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $ArticlePath)) { throw "ArticlePath not found: $ArticlePath" }

$raw = Get-Content -Raw -Path $ArticlePath -Encoding UTF8

$frontmatter = @{}
$body = $raw
if ($raw -match '(?s)^---\s*\r?\n(.*?)\r?\n---\s*\r?\n(.*)$') {
  $fm   = $matches[1]
  $body = $matches[2]
  foreach ($line in ($fm -split "`r?`n")) {
    if ($line -match '^\s*([A-Za-z_]+)\s*:\s*(.+?)\s*$') {
      $key = $matches[1].ToLower()
      $val = $matches[2].Trim('"').Trim("'")
      $frontmatter[$key] = $val
    }
  }
}

$title = if ($frontmatter.ContainsKey('title')) { $frontmatter['title'] } else { (Split-Path $ArticlePath -LeafBase) }
$description = if ($frontmatter.ContainsKey('summary')) { $frontmatter['summary'] } else { '' }

if (-not $Tags -or $Tags.Count -eq 0) {
  if ($frontmatter.ContainsKey('tags')) {
    $Tags = ($frontmatter['tags'] -replace '[\[\]"'']', '') -split ',\s*' | Where-Object { $_ }
  }
}
$Tags = @($Tags | ForEach-Object { ($_ -replace '[^a-zA-Z0-9]', '').ToLower() } | Where-Object { $_ -and $_.Length -le 30 } | Select-Object -Unique | Select-Object -First 4)

$article = @{
  title          = $title
  body_markdown  = $body.Trim()
  published      = [bool]$Publish
}
if ($CanonicalUrl)    { $article.canonical_url = $CanonicalUrl }
if ($description)     { $article.description   = $description }
if ($Tags.Count -gt 0){ $article.tags          = $Tags }
if ($MainImage)       { $article.main_image    = $MainImage }

$payload = @{ article = $article } | ConvertTo-Json -Depth 10

Write-Host '--- payload preview ---' -ForegroundColor Cyan
Write-Host "title       : $title"
Write-Host "published   : $([bool]$Publish)"
Write-Host "canonical   : $CanonicalUrl"
Write-Host ("tags        : " + ($Tags -join ', '))
Write-Host "main_image  : $MainImage"
Write-Host "body chars  : $($body.Trim().Length)"
Write-Host '-----------------------'

if ($DryRun) {
  Write-Host '[dry-run] not posting. payload JSON saved to ./.devto-payload.json' -ForegroundColor Yellow
  Set-Content -Path './.devto-payload.json' -Value $payload -Encoding UTF8
  return
}

if (-not $env:DEVTO_API_KEY) {
  $env:DEVTO_API_KEY = [System.Environment]::GetEnvironmentVariable('DEVTO_API_KEY', 'User')
}
if (-not $env:DEVTO_API_KEY) { throw 'DEVTO_API_KEY env var not set (process or User scope). Get key at dev.to Settings -> Extensions, then [System.Environment]::SetEnvironmentVariable("DEVTO_API_KEY","<key>","User")' }

$headers = @{ 'api-key' = $env:DEVTO_API_KEY; 'Content-Type' = 'application/json' }

try {
  $resp = Invoke-RestMethod -Method POST -Uri 'https://dev.to/api/articles' -Headers $headers -Body ([System.Text.Encoding]::UTF8.GetBytes($payload))
  Write-Host ('[devto] published id={0} url={1}' -f $resp.id, $resp.url) -ForegroundColor Green
  $resp | ConvertTo-Json -Depth 10 | Set-Content -Path './.devto-last-response.json' -Encoding UTF8
} catch [System.Net.WebException] {
  Write-Host '[devto] POST failed' -ForegroundColor Red
  $errResp = $_.Exception.Response
  if ($errResp) {
    try {
      $stream = $errResp.GetResponseStream()
      $reader = New-Object System.IO.StreamReader($stream)
      $errBody = $reader.ReadToEnd()
      Write-Host '--- dev.to error body ---' -ForegroundColor Yellow
      Write-Host $errBody
      Write-Host '-------------------------'
    } catch {
      Write-Host '(error body read failed)'
    }
  }
  Write-Host $_.Exception.Message
  throw
} catch {
  Write-Host '[devto] POST failed (non-web)' -ForegroundColor Red
  Write-Host $_.Exception.Message
  throw
}
