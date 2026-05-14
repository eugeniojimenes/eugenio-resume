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

Senior Ruby on Rails engineer with 8+ years shipping and running production apps, from Rails 5 to 8, including several major-version upgrades on older systems. Hands on the code while leading: backend services and APIs, frontend integration, Docker and AWS deploys, and keeping an eye on how the app behaves once it is live (Prometheus metrics, structured logs, call-level tracking of LLM usage). B.Sc. in Computer Science from the University of São Paulo (USP). Has led small teams (3–8 people) without stepping away from daily coding; now focused on senior remote roles on English\u{2011}speaking teams across overlapping timezones.

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
#text(
  size: 9pt,
)[Ruby on Rails, Ruby, RSpec, Sidekiq, ActiveRecord, Hotwire, Turbo, Stimulus, ViewComponent, JavaScript, TypeScript, Vue.js, React, Node.js, Nest.js, Express, Next.js, Python, Django, HTML, CSS, PostgreSQL, MySQL, MongoDB, DynamoDB, Redis, Docker, Linux, AWS, EC2, RDS, S3, IAM, Cognito, Route 53, Prometheus, Git, GitHub Actions, CI/CD, REST APIs, microservices, event-driven, system design, code review, performance tuning, observability, BFF, LLM APIs, Scrum, Agile.]

// ---- communication ------------------------------------------------
#section[Languages]

- *English*: B2 (upper-intermediate, working proficiency); actively improving toward C1.
- *Brazilian Portuguese*: Native.

// ---- experience ---------------------------------------------------
#section[Professional Experience]

#role[Senior Engineer / Tech Lead (squad of 3)][AdaTech][May 2025 – Nov 2025]
- Brought in as a senior engineer to stabilize a learning platform with AI features (recruiting and training) on a fixed six-month engagement.
- Pulled a scattered set of microservices into one coherent product by adding a clear boundary layer (a BFF), reusing existing services instead of rewriting them. Owned the service contracts and API design, bringing modernization habits from prior Rails work (clear boundaries, contract tests) to a TypeScript and Express stack.
- Shipped AI-backed chat and guided-interview features (Gemini, OpenAI) with per-call tracking of token use, cost, and model on Prometheus and Grafana, so the team could see what the AI features actually cost.
#stack[TypeScript, Express, Next.js, Docker, Linux, MySQL, DynamoDB, LLM APIs.]

#v(0.6em)
#role[Senior Engineer / Tech Lead (team of 8)][ByCoders (contracted to Locaweb, a Brazilian web-hosting provider)][Apr 2024 – May 2025]
- Senior Rails engineer on two product teams; set technical direction while writing code every day.
- Upgraded and cleaned up older Rails systems, including major-version upgrades from Rails 5 and 6 to 7.
- Added detailed latency tracking to a Rails service so the team could see which upstream dependency was slowing each response, down to the path and query rather than just the host. Pinpointed slow integrations across the billing, usage, availability, and notifications services.
- Built and ran the background message flows that let separate Rails services notify each other and hand off work.
- Modernized the Rails 7 server-rendered UI with Hotwire (Turbo, Stimulus): lazy-loaded and modal content, live partial updates, replacing old jQuery and CoffeeScript.
- Set engineering standards (API versioning, security and code-review checklists, release scoping) and prioritized technical debt by business impact, not backlog age.
#stack[Ruby on Rails, Ruby, RSpec, Sidekiq, REST APIs, JavaScript, TypeScript, Vue.js, Docker, Linux, PostgreSQL, MongoDB, Redis, Prometheus.]

#v(0.6em)
#role[Senior Engineer][Engesoftware Tecnologia S.A.][Apr 2023 – Mar 2024]
- Senior Rails engineer on a set of older systems being modernized.
- Led a Rails 6 → 7 upgrade on a legacy monolith without freezing feature delivery: untangled the new autoloader (renaming and relocating classes, resolving naming conflicts), swept deprecated APIs, then shipped from one long-lived branch behind green CI via staging soak, single cutover, and a tested rollback path.
- Refactored core Rails modules and Node services; designed how the old monolith and the newer services would talk to each other.
- Turned repeated UI (cards, tables, forms) into reusable, unit-tested components, replacing tangled old templates and helpers, rendered with Hotwire for incremental adoption.
#stack[Ruby on Rails, Ruby, TypeScript, Vue.js, Python, Django, Docker, PostgreSQL, MongoDB, Redis.]

#v(0.6em)
#role[Senior Engineer][CPmídias / Jornal Brasil de Fato (national news outlet)][Feb 2020 – Feb 2023]
- Senior Rails engineer on the publishing platform for a national independent news outlet. Added edge caching (Cloudflare) and tuned per-page cache lifetimes, with an automatic refresh on publish or update so editors saw changes right away. During the 2022 Brazilian general election the site absorbed roughly 100× its normal traffic on the same infrastructure, no scale-out, no extra spend.
- Found and fixed slow database queries on an inherited Postgres database with few indexes: added the missing indexes, pre-computed heavy analytics queries, and ran migrations on busy tables (articles, publications) with no downtime.
- Led the small dev team as IT lead: technical decisions, estimates, agile cadence, and mentoring junior engineers through pairing and code review.
#stack[Ruby on Rails, Ruby, TypeScript, Nest.js, WordPress, Docker, Linux, AWS, PostgreSQL, MongoDB, Redis.]

#v(0.6em)
#role[Senior Engineer / Tech Lead (team of 4–6)][Refinaria de Dados][Dec 2018 – Feb 2020]
- Tech lead for a set of Rails and Node services that turned data-science results on large client datasets into client dashboards and internal tools for the data team to publish and curate findings.
- Designed the SQL and NoSQL databases around how the analytics were read (large, read-heavy queries); moved report generation and CSV/PDF exports into background jobs so long tasks did not slow normal requests.
- Owned the AWS infrastructure end to end (EC2, RDS Postgres, S3, Route 53) and the production on-call rotation; first responder for incidents across the Rails apps, Node services, and data pipelines.
#stack[Ruby on Rails, Ruby, JavaScript, Node.js, React, Python, Sidekiq, Docker, AWS, PostgreSQL, Redis.]

#v(0.6em)
#role[Full Stack Developer][Minerva Aplicativos][May 2017 – Nov 2018]
- Full-stack work on Rails apps and REST APIs with single-page frontends; AWS administration (EC2, RDS, S3, Cognito, IAM, Route 53); code review across teams.
- Technical briefing for clients: feasibility, security recommendations, release scoping, and delivery planning.
#stack[Ruby on Rails, Ruby, JavaScript, Python, Django, WordPress, Docker, AWS, PostgreSQL, Redis.]

// ---- education ----------------------------------------------------
#section[Education]

- *B.Sc. in Computer Science*, University of São Paulo (USP), 2011 – 2018. // B.Sc. == Bachelor of Science. British/Commonwealth abbrev. US equivalent: B.S.
- *Academic Support for Students with Dyslexia*, University of São Paulo (USP), 2017 – 2018.

// ---- open source --------------------------------------------------
#section[Open Source]

- Merged contributor to #link("https://github.com/rubyforgood/human-essentials")[rubyforgood/human-essentials] (Rails app for diaper/essentials banks, 2024):
  - #link("https://github.com/rubyforgood/human-essentials/pull/4229")[PR #4229]: added address, website, and agency-type fields to the partner CSV export, with tests on the Partner model.
  - #link("https://github.com/rubyforgood/human-essentials/pull/4268")[PR #4268]: fixed flaky browser tests that depended on a jQuery-driven dropdown.

// ---- current ------------------------------------------------------
#section[Current Focus]

- Career break since Jan 2026 to transition into international remote roles.
- Study focus: data structures and algorithms, system design, Ruby on Rails internals, and English fluency (target: C1).
