### copyright 2017-2020 Regents of the University of California and the Broad Institute. All rights reserved.

FROM genepattern/seurat-suite:4.0.3
# Dockerfile for this previous container is in the Docker folder
MAINTAINER Edwin Juarez <ejuarez@ucsd.edu>

ENV LANG=C LC_ALL=C
USER root
RUN R -e "install.packages('remotes')"
RUN R -e 'requireNamespace("remotes", quietly = TRUE); remotes::install_github("mojaveazure/seurat-disk")'
RUN R -e "library('SeuratDisk');sessionInfo()"


#RUN R -e "install.packages('remotes')"
#RUN R -e 'requireNamespace("remotes", quietly = TRUE); remotes::install_github("FASTGenomics/fgread-r")'
#RUN R -e "library('fgread');sessionInfo()"

#ADD Docker/fgread-r/ /temp/fgread-r/
#RUN R -e 'install.packages("devtools")'

#RUN R -e 'setwd("/temp/fgread-r/");print(getwd());requireNamespace("devtools", quietly = TRUE); devtools::install_deps(upgrade="never")'
#RUN R -e "library('fgread');sessionInfo()"

#ADD src/seurat_qc.R /module/

USER GPUSER
RUN whoami

# build using this:
# docker build -t genepattern/seurat-qc:3.3 .
