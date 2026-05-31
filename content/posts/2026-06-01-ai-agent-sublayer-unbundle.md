---
title: "Supermemory · Parallel · markitdown — AI 에이전트 인프라가 sub-layer로 분화한 주"
date: 2026-05-31T20:00:00+09:00
draft: false
tags: ["AI", "AI 에이전트", "메모리", "Supermemory", "주간레이더"]
categories: ["AI 레이더"]
summary: "2026-05 마지막 ~ 6월 첫 주, 4 source(GitHub·Crunchbase·PH·펀딩)가 같은 곳을 가리켰다 — cycle 5 '에이전트 = 인프라' 다음 단계로 인프라가 memory·search·ingestion·orchestration sub-layer로 분화. supermemory · Parallel $230M · markitdown 등 5 signal 정리."
ShowToc: true
TocOpen: false
weight: 1
---

2026년 5월 마지막~6월 첫 주 신호를 4 source (GitHub Trending · Crunchbase · Product Hunt · 펀딩 뉴스)에서 모았다. cycle 5에서 본 "**AI 에이전트가 챗봇 카테고리에서 빠져나와 앱 안 인프라 레이어로 자리를 옮기는 중**"의 다음 단계가 잡혔다 — **그 인프라 자체가 memory · search · ingestion · orchestration 같은 sub-layer로 분화**.

## memory layer — supermemory · Second Brain for AI

GitHub Trending에 올라온 **supermemoryai/supermemory** ([github.com](https://github.com)) — 23,241 stars, 하루 +236. README 한 줄: "memory engine for AI". 같은 주 Product Hunt에 **Second Brain for AI** ([producthunt.com](https://producthunt.com)) 33 upvotes로 launch — "persistent memory for Claude, ChatGPT & Cursor".

두 신호 모두 한 가지를 가리킨다 — **AI 에이전트의 "기억" layer가 별도 product 카테고리로 분리되고 있다**. 한 달 전까지는 각 에이전트(Claude·ChatGPT·Cursor) 자체에 memory가 박혀 있었는데, 이제는 그 위에 wrapping해서 "여러 에이전트가 같은 memory를 공유하게" 하는 layer가 별도로 자라는 중.

## search layer — Parallel $230M / $2B 밸류

WSJ 보도 — **Parallel**이 누적 **$230M**을 모았고 밸류가 **$2B**에 도달 ([news.crunchbase.com](https://news.crunchbase.com)). 비즈니스 한 줄: "AI 에이전트용 web search infrastructure".

cycle 5의 Sierra($950M)·CopilotKit($27M)·Skild($1.4B)와 다른 angle — **에이전트가 web을 "보는" 방식 자체**를 인프라로 두는 layer. 기존 search API(Google·Bing·Brave)는 사람용 검색을 그대로 에이전트에 던지는 구조였다. Parallel은 에이전트의 context · 의도 · 신뢰도 검증까지 묶은 layer를 build 중.

## ingestion + orchestration layer

GitHub Trending에 새로 올라온 같은 주 항목들:

- **microsoft/markitdown** ([github.com](https://github.com)) — 134,628 stars, 하루 +2,759. 파일(pdf · docx · pptx · 이미지 · 영상 자막 등)을 markdown으로 변환해 AI에 ingest. cycle 5의 skill 단위 분리와 같은 방향으로, **"파일 → AI input" 단계가 별도 도구화**.
- **a5c-ai/babysitter** ([github.com](https://github.com)) 1,072 stars, +58/일 — agentic workforce orchestration.
- **nicobailon/pi-subagents** ([github.com](https://github.com)) 1,805 stars, +59/일 — async subagent delegation.
- **EveryInc/compound-engineering-plugin** 18,657 stars, +243/일, **revfactory/harness** 4,539 stars, +318/일 — 같은 카테고리에 동거.

각각의 stars는 크지 않지만, **subagent orchestration이 별도 product 카테고리로 한 주에 5개 동시 등장**한 것이 신호의 본체.

## 패턴 — 인프라 분화

cycle 5 → cycle 6 연결:

| 시기 | 큰 그림 |
|---|---|
| **cycle 5 (2026-05)** | 에이전트가 챗봇 → 앱 안 인프라 (CopilotKit · Sierra · skills · MCP) |
| **cycle 6 (2026-06)** | 그 인프라가 sub-layer로 분화 (memory · search · ingestion · orchestration) |

한 주에 4 sub-layer가 4 source에 동시 등장 — 일회성이 아닐 가능성이 cycle 5 때보다 한 단계 보강 (2주 데이터로 trend 단정은 추정).

## 1인 개발자·창업자에게

핵심 함의 한 줄: **범용 memory · 범용 search 시장은 이미 commodity 후보. 1인 개발자의 niche는 도메인 vertical sub-layer build로 이동한다.**

- supermemoryai 같은 **범용** memory engine은 오픈소스 + GitHub 폭발 = commodity 후보. 같은 layer 추가 build는 가치 ↓.
- 그러나 **도메인-특화 sub-layer**는 범용으로 cover 불가:
  - 한국 법률 사례 memory (법전 + 판례 + 신뢰도 매칭)
  - 회계 transaction memory (한국 세법 + 영수증 + 거래처 context)
  - 한국 부동산 매물 검색 memory (지역 + 가격 추이 + 학군)
  - 의료 진료 기록 memory (병원 EMR + 약물 상호작용 + 환자 history)
- Parallel 같은 범용 search는 1인 dev 시장 ❌. 단 **vertical search memory**는 도메인 데이터 access + UX가 차별점이라 1인 dev 시간 안에 들어옴 — 추정.

## 운영 노트

이 글은 moonsu studio cycle 6 산출물. 신호 24개 → 가중치 ranking → 상위 5개 → 1위 게이트 통과. 가중 점수와 탈락 후보는 같은 폴더 02-shortlist.md에 있다.

다음 cycle 검증 가설: vertical memory/search SaaS가 6개월 안에 의미 있게 등장하는지 (GitHub stars · launch 빈도 · 펀딩 라운드)로 추적.

## 출처

- supermemoryai · markitdown · babysitter · pi-subagents — [github.com](https://github.com)
- Second Brain for AI — [producthunt.com](https://producthunt.com)
- Parallel $230M / $2B · Scout AI · Gridcare — [news.crunchbase.com](https://news.crunchbase.com)

---

*moonsu studio는 AI·스타트업 시그널을 일정한 파이프라인으로 수집·랭킹·검증해 차분한 분석 콘텐츠로 정리하는 signal-driven 콘텐츠 스튜디오다. 매 글은 [signal-driven 큐레이션 SOP](https://github.com/moonsu1627)에 따라 작성되며, 자동 검증(verify.ps1)을 통과한 본문만 발행된다.*
