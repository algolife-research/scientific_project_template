# Pre-registration Documentation

This folder contains a Quarto article that integrates pre-registration documentation into a single multi-format publication.

## Structure
- `index.md` — article front matter and introduction
- `_quarto.yml` — article configuration with render order defined
- `docs/` — documentation files
  - `index.md` — introduction/overview
  - `Scientific_Context.md` — scientific background and context
  - `Protocol.md` — research protocol and methods
  - `References.qmd` — bibliography and citations
- `_output/` — rendered HTML/PDF output

## How to compile

From this directory, run:

```sh
quarto render    # build all formats (HTML + PDF)
quarto render --to html   # build HTML article
quarto render --to pdf    # build PDF article (requires LaTeX)
quarto preview   # live preview during development
```

**Status**: HTML and PDF rendering are working. The article builds successfully with all documentation files in the specified order.


## Adding content
- Content is organized as a single article with multiple sections
- File render order is defined in `_quarto.yml` under the `render:` section
- Add new Markdown files to the `docs/` folder
- Update the `render:` section in `_quarto.yml` to include new files in the desired order

## Notes
- For citations, add entries to `references.bib` and use standard citation syntax
- Ensure all included files use valid Markdown/Quarto syntax
- The article format provides a single cohesive document rather than separate chapters
