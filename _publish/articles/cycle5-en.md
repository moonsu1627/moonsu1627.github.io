---
title: "CopilotKit's $27M, Karpathy's skills repo, Vibedock — the week AI agents stopped being chatbots"
summary: "In the first week of May 2026, four independent sources (TechCrunch, Crunchbase, GitHub Trending, Product Hunt) all pointed at the same thing — AI agents are moving out of the chatbot category and into the in-app infrastructure layer. CopilotKit's $27M Series A, Karpathy's skills repo at +3,372 stars/day, Vibedock, and more — 5 signals broken down."
tags: ["ai", "agents", "copilotkit", "agui"]
canonical_url: "https://moonsu1627.github.io/posts/2026-05-24-ai-agents-infrastructure/"
main_image: "https://moonsu1627.github.io/images/cycle5/slides.001.png"
published: true
---

I pulled signals from four sources for the first week of May 2026 — TechCrunch, Crunchbase, GitHub Trending, Product Hunt. They all pointed at the same thing — **AI agents are sliding out of the chatbot category and settling into the in-app infrastructure layer**.

## Signal 1 — CopilotKit's $27M Series A

Seattle-based CopilotKit raised a **$27M Series A** led by Glilot Capital, NFX, and SignalFire (TechCrunch, 2026-05-05, [techcrunch.com](https://techcrunch.com)). Their AG-UI is an open protocol that standardizes how AI agents and UIs exchange streaming chat, front-end tool calls, and shared state. Per the article, combined install count sits at *"millions per week"*, and Fortune 500 customers including Deutsche Telekom, Docusign, Cisco, and S&P Global are running it in production.

In the same week, Bret Taylor's Sierra also closed a **$950M round** ([techcrunch.com](https://techcrunch.com)) at a post-money valuation north of $15B. If Sierra hosts enterprise agents, CopilotKit is the infra that embeds those agents inside apps. The same category absorbed major capital from two distinct angles in the same week.

## Signal 2 — Karpathy's skills, Vibedock, and multica

New entrants on GitHub Trending that week:

- **multica-ai/andrej-karpathy-skills** — 149,457 stars, **+3,372/day** ([github.com](https://github.com)). Karpathy's compilation of LLM coding pitfalls packaged as a single CLAUDE.md skill bundle. Reading: "skill" is hardening into a deployable unit.
- **multica-ai/multica** — 31,870 stars, +429/day ([github.com](https://github.com)). A managed agents platform. The market for outsourcing agent ops shows up in raw stars.
- **Anthropic-Cybersecurity-Skills** and **dotnet/skills** — domain-specific skill collections sitting on the same chart.

Product Hunt told a similar story:
- **Vibedock** (90 upvotes, [producthunt.com](https://producthunt.com)) — a macOS menubar toggle for Claude Code MCP servers. MCP server bundles are now common enough to be a daily-driver UX problem for solo devs.
- **Forsy** (103 upvotes, [producthunt.com](https://producthunt.com)) — captures AI agent workflow traces and sells the data. Agent execution traces themselves are starting to trade as a new asset class.

The absolute numbers (stars, upvotes) are small. What matters is **the same category showing up across four independent sources in the same week**.

## The pattern — "agent = chatbot" is ending

Stack the three buckets together and one picture emerges:

| Layer | Signal |
|---|---|
| In-app agent infra (for developers) | CopilotKit / AG-UI |
| Enterprise agent hosting | Sierra |
| Deployment unit = skill | karpathy-skills · dotnet/skills · cybersecurity-skills |
| Solo dev's agent control UX | Vibedock |
| Agent execution trace as asset | Forsy |
| Managed agents market | multica/multica |

The underlying shift is simple — agents are migrating from "the chatbot sitting outside" to "the infrastructure running inside the app." Four sources hitting the same point in one week makes it hard to dismiss as noise (though calling a trend from one week of data is still an estimate).

## What this means for solo developers and founders

The core takeaway: **once agent infrastructure standardizes, the differentiator stops being model or infra. It shifts to domain data, UX, and orchestration.**

- Once AG-UI lands as an open protocol, the building blocks of "SaaS with an embedded agent" become commodity.
- Rounds like Sierra's $950M or Skild's $1.4B ([news.crunchbase.com](https://news.crunchbase.com)) are not markets a solo dev can chase. But **a domain vertical on top of that infra** — accounting automation, logistics, region- or language-specific compliance (Korean medical insurance claims, for example) — fits inside solo-dev timescales. Estimate.
- Capital concentrating in a category also means the acquirer pool expands (estimate — needs category-level M&A data to verify).

## Hypothesis for the next cycle

> "Does AG-UI adoption among SaaS products grow meaningfully over the next 6 months?"

Metrics to watch:
- CopilotKit GitHub star growth
- AG-UI install counts
- Number of SaaS products citing it

## Sources

- CopilotKit $27M Series A — [techcrunch.com](https://techcrunch.com)
- Sierra $950M — [techcrunch.com](https://techcrunch.com)
- GitHub Trending daily — [github.com](https://github.com)
- Product Hunt — [producthunt.com](https://producthunt.com)
- Skild AI $1.4B / Crunchbase Q1 2026 stats — [news.crunchbase.com](https://news.crunchbase.com)

---

*moonsu studio is a signal-driven content studio. Every post runs through a fixed pipeline — collection, ranking, verification — and only bodies that pass automated checks (verify.ps1, no marketing puff) ship. Korean original at [moonsu1627.github.io](https://moonsu1627.github.io).*
