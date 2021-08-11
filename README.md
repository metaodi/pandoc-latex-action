# pandoc-latex-action

A GitHub Action based on the [pandoc/latex Dockerfile](https://github.com/pandoc/dockerfiles).
This action uses a custom image in order to install additional packages.

These packages include:
- msttcorefonts-installer
- fontconfig

Needed to get MS fonts to work.

## Usage

There is a [sample workflow in this repository](https://github.com/metaodi/pandoc-latex-action/blob/main/.github/workflows/documentation.yml):

This converts all `.md` files in `docs` to a PDF:

```yaml
- uses: metaodi/pandoc-latex-action@v1
  with:
    args: >-
       --pdf-engine=xelatex
       --from markdown+footnotes+pipe_tables
       --table-of-contents 
       --output=output/result.pdf
       docs/*.md
```
