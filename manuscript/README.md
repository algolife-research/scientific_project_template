# Manuscript Documentation

This folder contains a Quarto article that integrates the full research manuscript into a single multi-format publication following IMRAD structure.

## Structure
- `index.md` — article front matter and title page
- `_quarto.yml` — article configuration with render order defined
- `docs/` — manuscript sections
  - `index.md` — title page/abstract
  - `Introduction.md` — introduction section
  - `Methods.md` — methods section
  - `Results.md` — results section
  - `Discussion.md` — discussion section
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

**Status**: HTML and PDF rendering are working. The article builds successfully with all manuscript sections in IMRAD order.


## Adding content
- Content follows the IMRAD (Introduction, Methods, Results, Discussion) structure
- File render order is defined in `_quarto.yml` under the `render:` section
- Add new Markdown files to the `docs/` folder
- Update the `render:` section in `_quarto.yml` to include new files in the desired order

## Notes
- For citations, add entries to `references.bib` and use standard citation syntax
- Ensure all included files use valid Markdown/Quarto syntax
- The article format provides a single cohesive manuscript document
