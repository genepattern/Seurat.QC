docker run --rm -v $PWD:/LOCAL -w /LOCAL/Job_1 -t genepattern/seurat-qc:3.3 Rscript --no-save --quiet --slave --no-restore  /LOCAL/src/seurat_qc.R\
 --hca_url 'https://service.azul.data.humancellatlas.org/repository/files/fe214fea-cc68-56d0-a6d2-fe4d9bd7ea7d?catalog=dcp7&version=2021-05-24T15%3A10%3A20.000000Z' \
 --column_name "percent.mt" --pattern 'MT-'\
 --first_feature 'nFeature_RNA' --second_feature 'nCount_RNA' --third_feature 'percent.mt'\
 --file_name "test_run" --export_txt "False"
