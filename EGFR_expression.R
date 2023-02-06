library(HPAanalyze)

#This downloaded only the 'histology' dataset
downloadedData <- hpaDownload(downloadList='histology')

gene <- 'EGFR'

#Heatmap of protein expression in each cell type
tissue_list <- c('liver', 'bronchus', 'placenta')

hpaVisTissue(data = downloadedData,
             targetGene = gene,
             targetTissue = tissue_list,
             color = c("#eff3ff", "#bdd7e7","#6baed6", "#2171b5"))

# Multiple bar graphs of protein expression in individual target cancers
cancer_list <- c('lung cancer', 'glioma', 'colorectal cancer', 'ovarian cancer', 'breast cancer')

hpaVisPatho(data = downloadedData,
            targetGene = gene,
            targetCancer = cancer_list)