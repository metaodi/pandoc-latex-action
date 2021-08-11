FROM pandoc/latex

# Install MS fonts
RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f
    
# Install additional Latex packages
RUN tlmgr update --self
RUN tlmgr update --all
RUN tlmgr install titlesec \
                  tocloft \
                  fancyhdr \
                  multirow \
                  wrapfig \
                  colortbl \
                  pdflscape \
                  tabu \
                  float \
                  threeparttable \
                  tikzpagenodes \
                  titling
                   
