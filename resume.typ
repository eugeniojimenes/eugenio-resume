// =============================================================
// Eugenio Jimenes: Resume
// Typst source. Build: `typst compile resume.typ`
// =============================================================

#set document(
  title: "Eugenio Jimenes Resume",
  author: "Eugenio Jimenes",
)

#set page(
  paper: "a4",
  margin: (x: 1.4cm, y: 1.4cm),
)

// ---- fonts & color tokens ----------------------------------------
#let sans = "IBM Plex Sans"
#let serif = "IBM Plex Serif"

#let accent = rgb("#1a365d")   // deep slate
#let muted = rgb("#4a5568")
#let rule_c = rgb("#cbd5e0")   // hairline rule

#set text(font: serif, size: 10pt, lang: "en")
#set par(justify: false, leading: 0.58em)

// ---- helpers ------------------------------------------------------
#let section(title) = [
  #v(0.7em)
  #text(font: sans, weight: "semibold", size: 10.5pt, fill: accent)[#upper(title)]
  #v(-0.15em)
  #line(length: 100%, stroke: 0.4pt + rule_c)
  #v(0.15em)
]

#let role(title, org, period) = [
  #text(font: sans, weight: "semibold", size: 10.5pt, fill: accent)[#title] \
  #text(font: sans, weight: "medium")[#org]
  #h(0.4em) #text(fill: muted, style: "italic")[#period]
  #v(0.1em)
]

#let stack(items) = [
  #text(font: sans, weight: "medium", size: 9pt, fill: muted)[MAIN STACK: ]
  #text(size: 9pt)[#items]
]

// ---- header -------------------------------------------------------
#align(center)[
  #text(font: sans, size: 24pt, weight: "bold", tracking: 0.5pt)[Eugenio Jimenes] \
  #v(-0.3em)
  #text(font: sans, size: 11pt, fill: muted, weight: "regular")[Senior Ruby on Rails Engineer]
]

#v(0.6em)

Senior Rails engineer with 8+ years shipping production code across Rails 5 through 8, including multiple major-version upgrades on legacy monoliths. B.Sc. in Computer Science from the University of São Paulo (USP); hands-on across backend services, REST APIs, frontend integration, Docker, AWS, and production observability (Prometheus metrics, structured logs, LLM call-level telemetry). Led small engineering teams (3–8) while remaining a daily contributor; currently focused on senior remote roles in English\u{2011}speaking teams across overlapping timezones.

// ---- contact ------------------------------------------------------
#section[Contact]

- *Email:* #link("mailto:eugeniojimenes@gmail.com")
- *LinkedIn:* #link("https://www.linkedin.com/in/eugenio-augusto-jimenes")
- *GitHub:* #link("https://github.com/eugeniojimenes")
- *Personal site:* #link("https://eugeniojimenes.dev")
- *Location:* São Paulo, Brazil. Open to remote (UTC-3, flexible).

// ---- skills -------------------------------------------------------
#section[Technical Skills]

#grid(
  columns: (1fr, 1fr),
  gutter: 0.4em,
  [
    - *Ruby on Rails*: 8+ years (Rails 5 to 8, including upgrades)
    - *Ruby*: 8+ years (RSpec, Sidekiq, ActiveRecord, Hotwire/Turbo, ViewComponent)
    - *JavaScript / TypeScript*: 6+ years
    - *Vue.js*: 1+ year
    - *Node.js*: Nest.js, Express (2+ years)
    - *Python / Django*: 1+ year
    - *HTML / CSS*: 8+ years
  ],
  [
    - *PostgreSQL / MySQL*: 8+ years
    - *MongoDB / DynamoDB / Redis*: 3+ years
    - *Docker*: 7+ years
    - *AWS*: EC2, RDS, S3, IAM, Cognito, Route 53 (8+ years)
    - *Linux*: daily driver, sysadmin background (10+ years)
    - *Git / GitHub Actions*: 8+ years
    - *Scrum / Agile*: 8+ years
  ],
)

#v(0.3em)
#text(font: sans, weight: "medium", size: 9pt, fill: muted)[KEYWORDS: ]
#text(size: 9pt)[Ruby on Rails, Ruby, RSpec, Sidekiq, ActiveRecord, Hotwire, Turbo, Stimulus, ViewComponent, JavaScript, TypeScript, Vue.js, React, Node.js, Nest.js, Express, Next.js, Python, Django, HTML, CSS, PostgreSQL, MySQL, MongoDB, DynamoDB, Redis, Docker, Linux, AWS, EC2, RDS, S3, IAM, Cognito, Route 53, Prometheus, Git, GitHub Actions, CI/CD, REST APIs, microservices, event-driven, system design, code review, performance tuning, observability, BFF, LLM APIs, Scrum, Agile.]

// ---- communication ------------------------------------------------
#section[Languages]

- *English*: B2 (upper-intermediate, working proficiency); actively improving toward C1.
- *Brazilian Portuguese*: Native.

// ---- experience ---------------------------------------------------
#section[Professional Experience]

#role[Senior Engineer / Tech Lead (squad of 3)][AdaTech][May 2025 – Nov 2025]
- Senior engineer brought in to stabilize a Learning Experience Platform with AI features (recruiting, training) on a scoped six-month engagement.
- Introduced BFF boundaries to consolidate a distributed microservices stack (LMS-style) into a unified product, reusing legacy services without rewriting them; owned system design across service contracts and REST API integration.
- Shipped LLM-backed features (Gemini, OpenAI) for chat, guided interviews, and multi-agent evaluation flows. Introduced call-level observability (tokens, per-provider latency, cost-per-call, prompt eval logs) and formalized existing API versioning conventions.
- Stayed hands-on across backend and frontend code review, integration, and production debugging. Applied monolith-modernization patterns from prior Rails roles (boundary discipline, contract testing, deprecation policy) to a TypeScript/Express stack.
#stack[TypeScript, Express, Next.js, Docker, Linux, MySQL, DynamoDB, LLM APIs.]

#v(0.6em)
#role[Senior Engineer / Tech Lead (team of 8)][ByCoders (contracted to Locaweb, a Brazilian web-hosting provider)][Apr 2024 – May 2025]
- Senior Rails engineer on two product teams; led technical direction while contributing daily code.
- Refactored and upgraded legacy Rails systems. Led Rails major-version upgrades from 5 and 6 to 7.
- Extended yabeda-http_requests middleware on a Rails BFF to tag outbound REST API latency by domain, path, and query parameters (not just host/method); exposed via yabeda-prometheus to isolate slow integrations across billing, usage, availability, and notifications microservices.
- Operated event-driven async flows (Sidekiq + SQS) between Rails services for cross-domain notifications and background processing.
- Modernized server-rendered UI on the Rails 7 monolith with Hotwire (Turbo Frames for lazy/modal swaps, Turbo Streams for live partial updates) and Stimulus controllers, replacing legacy jQuery/CoffeeScript flows.
- Defined engineering standards: API versioning, security and code review checklists, MVP scoping, and delivery cadence.
- Prioritized technical debt by business impact rather than backlog age.
#stack[Ruby on Rails, Ruby, RSpec, Sidekiq, REST APIs, JavaScript, TypeScript, Vue.js, Docker, Linux, PostgreSQL, MongoDB, Redis, Prometheus.]

#v(0.6em)
#role[Senior Engineer][Engesoftware Tecnologia S.A.][Apr 2023 – Mar 2024]
- Senior Rails engineer on a portfolio of legacy systems undergoing modernization.
- Led a Rails 6 → 7 upgrade on a legacy monolith. Zeitwerk autoloader migration was the dominant work: renamed and relocated constants, resolved namespace ambiguities across the codebase to satisfy strict autoloading. Swept deprecated APIs (`update_attributes`, `Rails.application.secrets` → encrypted credentials), kept the migration on a single long-lived branch gated by a green CI matrix, then shipped via staging soak and single-cutover deploy with redeploy-previous-tag as the rollback path.
- Refactored critical Rails modules and Node services; designed integration paths between the monolith and new services.
- Componentized shared UI (cards, tables, forms) into ViewComponent classes with unit-test coverage, replacing legacy ERB partials and helper soup; rendered inside Turbo Frames/Streams for incremental Hotwire adoption.
- Enforced security and code review practices across squads.
#stack[Ruby on Rails, Ruby, TypeScript, Vue.js, Python, Django, Docker, PostgreSQL, MongoDB, Redis.]

#v(0.6em)
#role[Senior Engineer][CPmídias / Jornal Brasil de Fato (national news outlet)][Feb 2020 – Feb 2023]
- Senior Rails engineer on the publishing platform for a national independent news outlet. Introduced Cloudflare as edge cache, designed an event-driven purge-on-publish/update webhook so editors saw changes instantly, and tuned per-path cache rules and TTLs. Absorbed a ~100× traffic spike during the 2022 Brazilian general election on existing infrastructure, no scale-out or extra spend.
- Performance tuning on an inherited, under-indexed Postgres schema: profiled slow queries with EXPLAIN, added targeted indexes and materialized views for analytics paths, and ran zero-downtime migrations on hot tables (articles, publications).
- Coordinated technical decisions, effort estimation, and mentoring for a small dev team as IT lead; ran agile cadence and trained junior engineers via pairing and code review.
#stack[Ruby on Rails, Ruby, TypeScript, Nest.js, WordPress, Docker, Linux, AWS, PostgreSQL, MongoDB, Redis.]

#v(0.6em)
#role[Senior Engineer / Tech Lead (team of 4–6)][Refinaria de Dados][Dec 2018 – Feb 2020]
- Tech lead for a Rails + Node microservices suite that turned data-science output on large client datasets into client-facing dashboards and internal tools for the data team to publish and curate findings.
- Designed relational and NoSQL schemas tuned to analytics access patterns (heavy reads over wide aggregates); moved report generation and CSV/PDF exports onto Sidekiq to keep request paths responsive on long jobs.
- Owned AWS infrastructure end-to-end (EC2, RDS Postgres, S3, Route 53) and the production on-call rotation. First responder for incidents across the Rails apps, Node services, and data pipelines.
- Owned estimation, code review, and agile cadence for the squad; stayed hands-on across backend, frontend, and infra.
#stack[Ruby on Rails, Ruby, JavaScript, Node.js, React, Python, Sidekiq, Docker, AWS, PostgreSQL, Redis.]

#v(0.6em)
#role[Full Stack Developer][Minerva Aplicativos][May 2017 – Nov 2018]
- Full-stack development on Rails monoliths and REST APIs with SPA frontends; participated in code review across squads.
- AWS administration: EC2, RDS, S3, Cognito, IAM, Route 53.
- Technical briefing: feasibility, security recommendations, MVP scoping, and delivery planning.
#stack[Ruby on Rails, Ruby, JavaScript, Python, Django, WordPress, Docker, AWS, PostgreSQL, Redis.]

// ---- education ----------------------------------------------------
#section[Education]

- *B.Sc. in Computer Science*, University of São Paulo (USP), 2011 – 2018. // B.Sc. == Bachelor of Science. British/Commonwealth abbrev. US equivalent: B.S.
- *Academic Support for Students with Dyslexia*, University of São Paulo (USP), 2017 – 2018.

// ---- open source --------------------------------------------------
#section[Open Source]

- Merged contributor to #link("https://github.com/rubyforgood/human-essentials")[rubyforgood/human-essentials] (Rails app for diaper/essentials banks, 2024):
  - #link("https://github.com/rubyforgood/human-essentials/pull/4229")[PR #4229]: extended the partner CSV export with address, website, and agency-type fields, plus RSpec coverage on the Partner model.
  - #link("https://github.com/rubyforgood/human-essentials/pull/4268")[PR #4268]: fixed flaky Capybara system specs that depended on jQuery-driven dropdown population.

// ---- current ------------------------------------------------------
#section[Current Focus]

- Career break since Jan 2026 to transition into international remote roles.
- Study focus: data structures and algorithms, system design, Ruby on Rails internals, and English fluency (target: C1).
