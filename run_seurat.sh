docker run -v $PWD:/LOCAL -w /LOCAL/Job_1 -t genepattern/seurat-suite:2.4 Rscript --no-save --quiet --slave --no-restore  /LOCAL/src/seurat_qc.R\
 --tenx_data_dir 'https://s3-us-west-2.amazonaws.com/10x.files/samples/cell/pbmc3k/pbmc3k_filtered_gene_bc_matrices.tar.gz' \
 --column_name "percent.mt" --pattern 'MT-'\
 --first_feature 'nFeature_RNA' --second_feature 'nCount_RNA' --third_feature 'percent.mt'\
 --file_name "test_run"
