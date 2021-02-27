### copyright 2017-2020 Regents of the University of California and the Broad Institute. All rights reserved.

FROM genepattern/seurat-suite:2.4
# Dockerfile for this previous container is in the Docker folder
MAINTAINER Edwin Juarez <ejuarez@ucsd.edu>

ENV LANG=C LC_ALL=C
USER root

ADD src/seurat_qc.R /module/

# build using this:
# docker build -t genepattern/seurat-qc:3.0 .
