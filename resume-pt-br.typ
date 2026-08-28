// =============================================================
// Eugenio Jimenes: Currículo (PT-BR)
// Typst source. Build: `typst compile resume-pt-br.typ`
// Tradução do resume.typ. Mantenha as duas versões em sincronia.
// =============================================================

#set document(
  title: "Eugenio Jimenes Currículo",
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

#set text(font: serif, size: 10pt, lang: "pt")
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
  #text(font: sans, weight: "medium", size: 9pt, fill: muted)[STACK PRINCIPAL: ]
  #text(size: 9pt)[#items]
]

// ---- header -------------------------------------------------------
#align(center)[
  #text(font: sans, size: 24pt, weight: "bold", tracking: 0.5pt)[Eugenio Jimenes] \
  #v(-0.3em)
  #text(font: sans, size: 11pt, fill: muted, weight: "regular")[Engenheiro de Software Sênior (Ruby on Rails)]
]

#v(0.6em)

Engenheiro de Software Sênior especializado em Ruby on Rails, com mais de 8 anos de experiência entregando e mantendo aplicações em produção, de Rails 5 a Rails 8, incluindo diversas atualizações de versão major em sistemas legados. Experiência hands-on em desenvolvimento de serviços backend e APIs, integração com frontend, deploys com Docker e AWS, além de observabilidade em produção com métricas Prometheus, logs estruturados e rastreamento de uso de LLMs por chamada. Bacharel em Ciência da Computação pela Universidade de São Paulo (USP). Experiência liderando pequenos times de 3 a 8 pessoas sem se afastar da atuação hands-on. Atuação full-stack com foco em backend, confortável em entregar uma funcionalidade de ponta a ponta.

// ---- contact ------------------------------------------------------
#section[Contato]

- *Email:* #link("mailto:eugeniojimenes@gmail.com")
- *LinkedIn:* #link("https://www.linkedin.com/in/eugenio-augusto-jimenes")
- *GitHub:* #link("https://github.com/eugeniojimenes")
- *Site pessoal:* #link("https://eugeniojimenes.dev")
- *Localização:* São Paulo, Brasil. Aberto a remoto (UTC-3, flexível).

// ---- skills -------------------------------------------------------
#section[Competências Técnicas]

#grid(
  columns: (1fr, 1fr),
  gutter: 0.4em,
  [
    - *Ruby on Rails*: 8+ anos (Rails 5 ao 8, incluindo upgrades)
    - *Ruby*: 8+ anos (RSpec, Sidekiq, ActiveRecord, Hotwire/Turbo, ViewComponent)
    - *JavaScript / TypeScript*: 6+ anos
    - *React / Vue.js*: 2+ anos
    - *Node.js*: Nest.js, Express (2+ anos)
    - *Python / Django*: 1+ ano
    - *HTML / CSS*: 8+ anos
  ],
  [
    - *PostgreSQL / MySQL*: 8+ anos
    - *MongoDB / DynamoDB / Redis*: 3+ anos
    - *Docker*: 7+ anos
    - *AWS*: EC2, RDS, S3, IAM, Cognito, Route 53 (8+ anos)
    - *Linux*: uso diário, experiência como sysadmin (10+ anos)
    - *Git / GitHub Actions*: 8+ anos
    - *Scrum / Agile*: 8+ anos
  ],
)

#v(0.3em)
#text(font: sans, weight: "medium", size: 9pt, fill: muted)[PALAVRAS-CHAVE: ]
#text(
  size: 9pt,
)[Ruby on Rails, Ruby, RSpec, Sidekiq, ActiveRecord, Hotwire, Turbo, Stimulus, ViewComponent, JavaScript, TypeScript, Vue.js, React, Node.js, Nest.js, Express, Next.js, Python, Django, HTML, CSS, PostgreSQL, MySQL, MongoDB, DynamoDB, Redis, Docker, Linux, AWS, EC2, RDS, S3, IAM, Cognito, Route 53, Prometheus, Grafana, Git, GitHub Actions, CI/CD, REST APIs, GraphQL, microservices, event-driven, system design, code review, performance tuning, observability, BFF, LLM APIs, Scrum, Agile.]

// ---- communication ------------------------------------------------
#section[Idiomas]

- *Inglês*: C1 (avançado, proficiência profissional).
- *Português (Brasil)*: Nativo.

// ---- experience ---------------------------------------------------
#section[Experiência Profissional]

#role[Engenheiro de Software Sênior III][Jaya Tech (alocado na Pipefy, SaaS de automação de processos)][Ago 2026 – Atual]
- Engenheiro sênior no time de plataforma da Pipefy, atuando em um produto B2B multi-tenant em produção.
// Preencher com detalhes (o que o time é dono, o que mudou, números) assim que houver mais contexto do trabalho.
#stack[Ruby on Rails, GraphQL, React, PostgreSQL, Sidekiq, Redis, RSpec, Docker, Grafana.]

#v(0.6em)
#role[Sabático dedicado a estudos][Independente][Nov 2025 – Ago 2026]
- Pausa deliberada e autofinanciada para me aprofundar em fundamentos: design de sistemas, estruturas de dados e algoritmos, internals do Ruby on Rails, tudo trabalhado em um Zettelkasten pessoal.
- Estudo estruturado de inglês, do B2 ao C1.

#v(0.6em)
#role[Engenheiro de Software Sênior / Tech Lead (time de 3–4)][AdaTech][Mai 2025 – Nov 2025]
- Contratado como engenheiro sênior para estabilizar uma plataforma de aprendizagem com recursos de IA (recrutamento e treinamento), em um contrato fixo de seis meses.
- Uni um conjunto disperso de microsserviços em um produto coeso adicionando uma camada de fronteira clara (um BFF), reutilizando os serviços existentes em vez de reescrevê-los. Responsável pelos contratos de serviço e design de API, trazendo hábitos de modernização do trabalho anterior com Rails (fronteiras claras, testes de contrato) para um stack TypeScript e Express.
- Entreguei recursos de chat e entrevista guiada baseados em IA (Gemini, OpenAI) com rastreamento por chamada de uso de tokens, custo e modelo no Prometheus e Grafana, para que o time enxergasse o custo real dos recursos de IA.
#stack[TypeScript, Express, React, Next.js, Docker, Linux, MySQL, DynamoDB, LLM APIs.]

#v(0.6em)
#role[Engenheiro de Software Sênior / Tech Lead (time de 8)][ByCoders (alocado na Locaweb, provedora brasileira de hospedagem web)][Abr 2024 – Mai 2025]
- Engenheiro Rails sênior em dois times de produto; definia a direção técnica enquanto escrevia código todos os dias.
- Atualizei e organizei sistemas Rails legados, incluindo upgrades de versão major do Rails 5 e 6 para o 7.
- Adicionei rastreamento detalhado de latência a um serviço Rails para que o time visse qual dependência upstream estava atrasando cada resposta, até o nível de rota e query, não apenas o host. Identifiquei integrações lentas nos serviços de cobrança, consumo, disponibilidade e notificações.
- Construí uma camada leve de mensageria entre apps usando Sidekiq sobre uma instância Redis compartilhada entre dois apps Rails distintos, permitindo que se notificassem e repassassem trabalho entre si; planejei uma migração futura para um pub/sub dedicado (RabbitMQ).
- Modernizei a UI renderizada no servidor do Rails 7 com Hotwire (Turbo, Stimulus): conteúdo carregado sob demanda e em modais, atualizações parciais em tempo real, substituindo jQuery e CoffeeScript antigos.
- Defini padrões de engenharia (versionamento de API, checklists de segurança e code review, escopo de releases) e priorizei dívida técnica por impacto no negócio, não pela idade no backlog.
#stack[Ruby on Rails, Ruby, RSpec, Sidekiq, REST APIs, JavaScript, TypeScript, Vue.js, Docker, Linux, PostgreSQL, MongoDB, Redis, Prometheus.]

#v(0.6em)
#role[Engenheiro de Software Sênior][Engesoftware Tecnologia S.A.][Abr 2023 – Mar 2024]
- Engenheiro Rails sênior em um conjunto de sistemas legados em modernização.
- Liderei um upgrade de Rails 6 → 7 em um monólito legado sem congelar a entrega de features: desembaracei o novo autoloader (renomeando e realocando classes, resolvendo conflitos de nome), varri APIs depreciadas e entreguei a partir de um branch de vida longa com CI verde, via soak em staging, cutover único e um caminho de rollback testado.
- Refatorei módulos centrais em Rails e serviços em Node; projetei como o monólito antigo e os serviços mais novos se comunicariam.
- Transformei UI repetida (cards, tabelas, formulários) em componentes reutilizáveis e testados, substituindo templates e helpers antigos e emaranhados, renderizados com Hotwire para adoção incremental.
#stack[Ruby on Rails, Ruby, TypeScript, React, Vue.js, Python, Django, Docker, PostgreSQL, MongoDB, Redis.]

#v(0.6em)
#role[Engenheiro de Software Sênior / Tech Lead (time de 3–4)][CPmídias / Jornal Brasil de Fato (veículo de notícias nacional)][Fev 2020 – Fev 2023]
- Engenheiro Rails sênior na plataforma de publicação de um veículo de notícias independente nacional. Adicionei cache de borda (Cloudflare) e ajustei o tempo de cache por página, com atualização automática ao publicar ou editar, para que os editores vissem as mudanças na hora. Durante as eleições gerais de 2022 no Brasil, o site absorveu cerca de 100× o tráfego normal na mesma infraestrutura, sem escalar horizontalmente e sem custo extra.
- Encontrei e corrigi queries lentas em um banco Postgres herdado com poucos índices: adicionei os índices faltantes, pré-computei queries analíticas pesadas e rodei migrations em tabelas movimentadas (artigos, publicações) sem downtime.
- Liderei o pequeno time de desenvolvimento como líder de TI: decisões técnicas, estimativas, cadência ágil e mentoria de engenheiros juniores via pareamento e code review.
#stack[Ruby on Rails, Ruby, TypeScript, Nest.js, Vue.js, WordPress, Docker, Linux, AWS, PostgreSQL, MongoDB, Redis.]

#v(0.6em)
#role[Engenheiro de Software Sênior / Tech Lead (time de 4–6)][Refinaria de Dados][Dez 2018 – Fev 2020]
- Tech lead de um conjunto de serviços em Rails e Node que transformavam resultados de data science sobre grandes datasets de clientes em dashboards para clientes e ferramentas internas para o time de dados publicar e curar descobertas.
- Modelei os bancos SQL e NoSQL em torno de como as análises eram lidas (queries grandes e intensivas em leitura); movi a geração de relatórios e exports CSV/PDF para jobs em background para que tarefas longas não atrasassem as requisições normais.
- Responsável pela infraestrutura AWS de ponta a ponta (EC2, RDS Postgres, S3, Route 53) e pela escala de plantão em produção; primeiro a responder a incidentes nos apps Rails, serviços Node e pipelines de dados.
#stack[Ruby on Rails, Ruby, JavaScript, Node.js, React, Python, Sidekiq, Docker, AWS, PostgreSQL, Redis.]

#v(0.6em)
#role[Desenvolvedor Full Stack][Minerva Aplicativos][Mai 2017 – Nov 2018]
- Trabalho full-stack em apps Rails e APIs REST com frontends single-page; administração de AWS (EC2, RDS, S3, Cognito, IAM, Route 53); code review entre times.
- Briefing técnico para clientes: viabilidade, recomendações de segurança, escopo de releases e planejamento de entrega.
#stack[Ruby on Rails, Ruby, JavaScript, Python, Django, WordPress, Docker, AWS, PostgreSQL, Redis.]

// ---- education ----------------------------------------------------
#section[Formação Acadêmica]

- *Bacharelado em Ciência da Computação*, Universidade de São Paulo (USP), 2011 – 2018.
- *Apoio Acadêmico para Estudantes com Dislexia*, Universidade de São Paulo (USP), 2017 – 2018.

// ---- open source --------------------------------------------------
#section[Open Source]

- Contribuições aceitas (merged) em #link("https://github.com/rubyforgood/human-essentials")[rubyforgood/human-essentials] (app Rails para bancos de fraldas/itens essenciais, 2024):
  - #link("https://github.com/rubyforgood/human-essentials/pull/4229")[PR #4229]: adicionei campos de endereço, site e tipo de organização ao export CSV de parceiros, com testes no model Partner.
  - #link("https://github.com/rubyforgood/human-essentials/pull/4268")[PR #4268]: corrigi testes de browser instáveis (flaky) que dependiam de um dropdown controlado por jQuery.

