# resume

Public source of my résumé. Written in [Typst](https://typst.app/).

- **Source:** [`resume.typ`](./resume.typ)
- **Latest PDF:** see [Releases](../../releases/latest) → `resume.pdf`

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
typst compile resume.typ              # → resume.pdf
typst watch resume.typ                # rebuild on save
```

## CI

GitHub Actions workflow at [`.github/workflows/build.yml`](./.github/workflows/build.yml) compiles `resume.typ` on every push to `main` and uploads `resume.pdf` as a release artifact when a tag is pushed.

## License

- **Source code** (Typst template, helpers, CI workflow) — [MIT](./LICENSE)
- **Résumé content** (text, personal information, work history) — © Eugenio Jimenes, all rights reserved. See [LICENSE-CONTENT](./LICENSE-CONTENT).
