# resume

Public source of my résumé. Written in [Typst](https://typst.app/).

- **Source (English):** [`resume.typ`](./resume.typ)
- **Source (Portuguese):** [`resume-pt-br.typ`](./resume-pt-br.typ)
- **Latest PDFs:** see [Releases](../../releases/latest) → `resume.pdf` (EN), `resume-pt-br.pdf` (PT-BR)

## Build locally

Install Typst:

```bash
# Arch Linux (btw)
sudo pacman -S typst

# macOS
brew install typst

# any OS via cargo
cargo install --locked typst-cli
```

Compile:

```bash
typst compile resume.typ              # → resume.pdf       (English)
typst compile resume-pt-br.typ        # → resume-pt-br.pdf (Portuguese)
typst watch resume.typ                # rebuild on save
```

## CI

GitHub Actions workflow at [`.github/workflows/build.yml`](./.github/workflows/build.yml) compiles both `resume.typ` and `resume-pt-br.typ` on every push to `main`, and attaches `resume.pdf` and `resume-pt-br.pdf` as release artifacts when a tag is pushed. Stable download URLs:

```
https://github.com/eugeniojimenes/eugenio-resume/releases/latest/download/resume.pdf
https://github.com/eugeniojimenes/eugenio-resume/releases/latest/download/resume-pt-br.pdf
```

## License

- **Source code** (Typst template, helpers, CI workflow) — [MIT](./LICENSE)
- **Résumé content** (text, personal information, work history) — © Eugenio Jimenes, all rights reserved. See [LICENSE-CONTENT](./LICENSE-CONTENT).
