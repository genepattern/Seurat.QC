# Seurat.QC (v4)
---
**Description**: GenePattern module which implements the QC steps for Seurat. This is typically the first step in the Seurat Suite modules (unless you are doing batch correction, then you want to run Seurat.BatchCorrection).

**Authors**: Edwin Juárez and Jonathan Zamora

**Contact**: [Forum Link](https://groups.google.com/forum/?utm_medium=email&utm_source=footer#!forum/genepattern-help)

**Algorithm Version**: Seurat 4.0.3

---

## Summary
---

The `Seurat.QC` Module aims to provide a quick look at some basic single-cell datasets. The resultant preprocessed dataset can then be used for downstream analyses and visualizations (such as Seurat.Preprocessing).

## References
---
[Satija Lab](https://satijalab.org)

[Seurat](https://satijalab.org/seurat/)

[Module Repo](https://github.com/genepattern/Seurat.QC/releases/tag/v4.0)

[Module's Docker Image](https://hub.docker.com/layers/genepattern/seurat-qc/3.3/images/sha256-e3446b4143174358ed03366f16d20c7507fd53a6ba3895cedda580f078e77f1d?context=repo)

### Technical Notes
Uses Seurat version 4.0.3

## Parameters
---

| Name | Description |
-------|--------------
| input_file         | `.tar.gz`, `.zip`, or `.loom` file input that contains the  raw single cell data -- currently only 10x data and .loom files from HCA are supported.|
| column_name            | 	column name of percent mitochondrial genes. Note: not all datasets have this column, those who do often times name it percent.mt].|
| pattern        | 	what pattern to use to label mitochondrial genes [often times this is annotated as MT-].|
| first_feature  | [For QC plots] First feature to plot as a violin plot [typically one of the columns in the matrix.mtx file. Sometimes named features.tsv].|
|second_feature|	[For QC plots] Second feature to plot as a violin plot [typically one of the columns in the matrix.mtx file. Sometimes named features.tsv].|
|third_feature|	[For QC plots] Third feature to plot as a violin plot [typically one of the columns in the matrix.mtx file. Sometimes named features.tsv]. Leave blank if you don't want this to be plotted.|
| file_name      | 	Basename of the file to be saved.|
| export_txt      | 	Wether or not to create a TXT file compatible with some other modules (this requires a large amount of memory and for large datasets it causes unpredicted errors).|


## Output Files
---

1. `<file_name>.rds` [typically `seurat_preprocessed_dataset.rds`]
    - The `.rds` file can be used on another one of GenePattern's Seurat suite modules, such as the `Seurat.Preprocessing` module.
2. `<your_output_file_name>.pdf` [typically `Rplots.pdf`]
    - The `.pdf` file which contains plots of the preprocessing steps.
3. `<file_name>.txt` [typically `seurat_preprocessed_dataset.txt`]
    - The `.txt` file containing a dense matrix (typically a large file) that can be used on another one of GenePattern's suite modules, such as the `Seurat.BatchCorrection` or `Conos` modules.


## License
---

`Seurat.Preprocessing` is distributed under a modified BSD license available at https://github.com/genepattern/Seurat.Preprocessing/blob/develop/LICENSE


## Platform Dependencies
---

| Task Type | CPU Type | Operating System | Language |
------------|----------|------------------|----------|
|           |  Any     | Any              | R 4.0.2  |


## Version Comments
---

| Version | Release Date | Description                                 |
----------|--------------|---------------------------------------------|
| 4       | 2021-07-15          | Accepting Loom files from HCA |
| 3       | 2021-02-26          | Updating `Seurat.QC` to make creation of .txt dense matrix optional (improving performance.) |
| 1       | 2020-11-16          | Initial Release of `Seurat.QC` |
