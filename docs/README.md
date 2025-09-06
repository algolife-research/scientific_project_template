# Documentation Compilation Workflow

This folder contains a Quarto "book" that integrates project Markdown files (protocols, context, results) into a single multi-format publication.

## Structure
- `index.md` — book front matter and landing page
- `_quarto.yml` — book configuration with chapters defined
- `context/` — scientific context and protocol files
  - `Scientific_Context.md`
  - `Protocol.md`
- `report/` — methods, results and discussion chapters
  - `Methods.md`
  - `Results.md` 
  - `Discussion.md`
- `_output/` — rendered HTML/PDF output

## How to compile

From the project root, run:

```sh
quarto render docs/ --to html   # build HTML book (✓ working)
quarto render docs/ --to pdf    # build PDF book (requires LaTeX)
quarto preview docs/            # live preview during development
```

**Status**: HTML rendering is working. The book builds successfully with 6 chapters across 2 parts.


## Adding content
- Content is organized into two main parts: "General Context" and "Study Report"
- Chapter structure is defined in `_quarto.yml` (no separate `_toc.yml` file)
- Add new Markdown files to `context/` or `report/` folders
- Update the `chapters:` section in `_quarto.yml` to include new files

## Notes
- For citations, add a `references.bib` file and use standard citation syntax.
- Ensure all included files use valid Markdown/Quarto syntax.
