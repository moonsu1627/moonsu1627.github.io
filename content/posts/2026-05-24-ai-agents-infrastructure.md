---
title: "CopilotKit $27M · Karpathy skills · Vibedock — AI 에이전트가 챗봇이 아니라 인프라가 되는 주"
date: 2026-05-24T18:00:00+09:00
draft: false
tags: ["AI", "AI 에이전트", "CopilotKit", "AG-UI", "주간레이더"]
categories: ["AI 레이더"]
summary: "2026-05 첫째 주, 4 source(TechCrunch·Crunchbase·GitHub·Product Hunt)가 같은 곳을 가리켰다 — AI 에이전트가 외부 챗봇에서 앱 안 인프라 레이어로 옮겨가는 중. CopilotKit $27M Series A · Karpathy skills +3,372/일 · Vibedock 등 5개 신호 정리."
ShowToc: true
TocOpen: false
weight: 1
---

2026년 5월 첫째 주 신호를 4 source (TechCrunch · Crunchbase · GitHub Trending · Product Hunt) 에서 동시에 모았다. 서로 다른 출처에서 같은 곳을 가리키는 게 보였다 — **AI 에이전트가 챗봇 카테고리에서 빠져나와 앱 안 인프라 레이어로 자리를 옮기는 중**.

## 신호 1 — CopilotKit $27M Series A

Seattle 본사의 CopilotKit이 Glilot Capital · NFX · SignalFire 리드로 **$27M Series A**를 받았다 (2026-05-05 TechCrunch 보도, [techcrunch.com](https://techcrunch.com)). CopilotKit이 만드는 AG-UI는 AI 에이전트와 UI 사이의 streaming chat · front-end tool call · state sharing을 표준화하는 오픈 프로토콜이다. 기사에 따르면 합산 install 수는 "millions per week" 수준이고 Deutsche Telekom · Docusign · Cisco · S&P Global 같은 F500이 production에서 쓰고 있다.

같은 주에 Bret Taylor의 Sierra도 **$950M Series**를 받았다 ([techcrunch.com](https://techcrunch.com)) — 포스트머니 $15B+. Sierra가 엔터프라이즈 에이전트를 호스팅한다면 CopilotKit은 그 에이전트를 앱 안에 박는 인프라다. 같은 카테고리에 큰 자금이 두 갈래로 동시에 흘렀다.

## 신호 2 — Karpathy skills · Vibedock · multica

GitHub Trending에 같은 주 새로 올라온 항목:

- **multica-ai/andrej-karpathy-skills** — 149,457 stars, 하루 +3,372 ([github.com](https://github.com)). Karpathy가 LLM 코딩 함정에 대해 단일 CLAUDE.md로 정리한 skill 묶음. "skill"이 배포 가능한 단위로 굳어지는 중이라는 신호.
- **multica-ai/multica** — 31,870 stars, 하루 +429 ([github.com](https://github.com)). Managed agents 플랫폼. 에이전트 운영을 외부에 맡기는 시장이 stars 수치로 잡힌다.
- **Anthropic-Cybersecurity-Skills**, **dotnet/skills** 같은 도메인-특화 skill 모음도 같은 차트에 동거.

Product Hunt 쪽도 비슷한 결을 보였다:
- **Vibedock** (90 upvotes, [producthunt.com](https://producthunt.com)) — Claude Code MCP 서버를 메뉴바에서 토글하는 macOS 도구. MCP 서버 묶음이 1인 개발자의 일상 도구로 다뤄질 만큼 흔해졌다는 의미다.
- **Forsy** (103 upvotes, [producthunt.com](https://producthunt.com)) — AI agent workflow 실행 trace를 캡처해 데이터로 판매. 에이전트 실행 trace 자체가 새 자산으로 거래되기 시작했다.

각각의 절대 수치(stars / upvotes)는 크지 않다. 다만 **같은 카테고리가 4 source에 동시 등장한 것**이 신호의 본체다.

## 패턴 — "에이전트 = 챗봇" 프레임이 끝나는 중

세 묶음을 합치면 한 그림이 된다:

| 레이어 | 신호 |
|---|---|
| 앱 안 에이전트 인프라 (개발자용) | CopilotKit / AG-UI |
| 에이전트 호스팅 (엔터프라이즈) | Sierra |
| 배포 단위 = skill | karpathy-skills · dotnet/skills · cybersecurity-skills |
| 1인 dev의 에이전트 조작 UX | Vibedock |
| 에이전트 실행 trace 자체 자산화 | Forsy |
| Managed agents 시장 | multica/multica |

전체를 관통하는 변화는 단순하다 — 에이전트가 "외부에 있는 챗봇"에서 "앱 안에 박혀 도는 인프라"로 자리를 옮긴다. 이 흐름이 한 주에 4 source에 동시 잡혔다는 점에서 일회성 노이즈로 보기 어렵다 (다만 한 주 데이터로 trend 단정은 추정에 가깝다).

## 1인 개발자·창업자에게 무슨 의미인가

핵심 함의 한 줄: **에이전트 인프라가 표준화되면 차별점은 모델·인프라가 아니라 도메인 데이터와 UX와 orchestration으로 이동한다.**

- AG-UI가 오픈 프로토콜로 자리 잡으면 "에이전트가 박힌 SaaS"의 building block이 commodity가 된다.
- Sierra $950M · Skild $1.4B ([news.crunchbase.com](https://news.crunchbase.com)) 같은 라운드는 1인 개발자가 직접 쫓을 시장이 아니다. 다만 **그 위에 도메인 vertical (회계·물류·국내 의료 청구 같은 지역·언어 특화 영역)** 을 얹는 작업은 1인 dev 시간 안에 들어온다 — 추정.
- 펀딩이 카테고리에 집중된다는 건 후속 acquirer 풀이 같이 커진다는 뜻이기도 하다 (추정 — 카테고리별 M&A 데이터 별도 검증 필요).

## 운영 노트

이 글은 moonsu studio cycle 5 산출물. 신호 22개 → 가중치 ranking → 상위 5개 → 1위 게이트 통과 → 이 초안 흐름으로 만들어졌다. raw 점수와 탈락 후보는 [moonsu-studio repo의 cycle 5 폴더](https://github.com/moonsu1627)에 있다.

다음 사이클에서 검증할 가설: "AG-UI 채택 SaaS가 6개월 안에 의미 있게 늘어나는가 (CopilotKit GitHub stars · install 수 · 인용 SaaS 수)."

## 출처

- CopilotKit $27M Series A — [techcrunch.com](https://techcrunch.com)
- Sierra $950M — [techcrunch.com](https://techcrunch.com)
- GitHub Trending daily — [github.com](https://github.com)
- Product Hunt — [producthunt.com](https://producthunt.com)
- Skild AI $1.4B / Crunchbase Q1 2026 통계 — [news.crunchbase.com](https://news.crunchbase.com)

---

*moonsu studio는 AI·스타트업 시그널을 일정한 파이프라인으로 수집·랭킹·검증해 차분한 분석 콘텐츠로 정리하는 signal-driven 콘텐츠 스튜디오다. 매 글은 [signal-driven 큐레이션 SOP](https://github.com/moonsu1627)에 따라 작성되며, 자동 검증(verify.ps1)을 통과한 본문만 발행된다.*
