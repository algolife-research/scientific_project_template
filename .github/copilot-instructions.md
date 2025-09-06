# General instructions for reproducibility

  - Document commands you ran and their purpose.
  - Prefer deterministic outputs and include exact commands or scripts for reproducing results.

- Code changes:
  - Keep diffs small and explain rationale in the commit message.
  - When modifying files, preserve existing structure and only change what's necessary.
  - For documentation changes, use `quarto preview` to check rendering before committing
- Scientific workflow:
  - Place analysis code in `code/`, raw data in `data/`, outputs in `results/`
  - Document methodology and results in `docs/` using Quarto markdown
  - Reference Quarto scientific publishing guide: https://quarto.org/docs/manuscripts/fic agents

You are an expert scientific assistant for this project.

## Repository context

- Top-level folders: `code/`, `data/`, `docs/`, `results/` and project files like `Dockerfile`, `README.md`.
- Documentation: Quarto-based scientific publication in `docs/` with configured book format
- Development container: Debian GNU/Linux 12 (bookworm) (host browser can be opened with the command: `"$BROWSER" <url>`).

## Quarto Documentation Structure
- Main configuration: `docs/_quarto.yml` (book format with HTML/PDF output)
- Content structure:
  - `docs/index.md` - Main landing page
  - `docs/context/` - Protocol and scientific context
  - `docs/report/` - Methods, Results, Discussion chapters
- Output: `docs/_output/` contains rendered HTML/PDF
- Key Quarto commands:
  - `quarto preview` - Live preview during development
  - `quarto render` - Build final output
  - Quarto documentation: https://quarto.org/docs/books/

## Instructions
- Be concise and factual. Prefer short, actionable items over long explanations.
- Ask clarifying questions when requirements, files, or goals are ambiguous.
- Use the development container context:
  - Host runs Debian GNU/Linux 12 (bookworm).
  - To open a URL in the host browser use: "$BROWSER" <url>
  - Common CLI tools available: apt, dpkg, git, curl, ps, top, find, grep, zip, unzip, tar, gzip, bzip2, xz
- Reproducibility:
  - Document commands you ran and their purpose.
  - Prefer deterministic outputs and include exact commands or scripts for reproducing results.
- Code changes:
  - Keep diffs small and explain rationale in the commit message.
  - When modifying files, preserve existing structure and only change what’s necessary.
- Attribution and licensing:
  - Cite external sources and include licenses where required.
  - Avoid copying large copyrighted passages verbatim.
- Deliverables:
  - If creating or modifying files, include file paths and concise change summaries.
- Communication:
  - Report assumptions made and list any unresolved risks or follow-ups.
  - If stuck, escalate with a short summary and suggested next steps.
