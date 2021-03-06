# pandoc-latex-action

A GitHub Action based on the [pandoc/latex Dockerfile](https://github.com/pandoc/dockerfiles).
This action uses a custom image in order to install additional packages.

These packages include (needed to get MS fonts to work):
- msttcorefonts-installer
- fontconfig

And a few additional [CTAN](https://ctan.org/) packages (see the [Dockerfile](https://github.com/metaodi/pandoc-latex-action/blob/main/Dockerfile) for details).

## Usage

There is a [sample workflow in this repository](https://github.com/metaodi/pandoc-latex-action/blob/main/.github/workflows/documentation.yml):

This converts the `README.md` file to a PDF:

```yaml
- uses: metaodi/pandoc-latex-action@v2.1
  with:
    args: >-
       --pdf-engine=xelatex
       --from markdown+footnotes+pipe_tables
       --table-of-contents 
       --output=output/result.pdf
       README.md
```

