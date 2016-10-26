
chmNewFunction ("openKMPlot1",
	"For axis type 'bio.tcga.barcode.sample', opens a dynamically generated Kaplan-Meier TCGA for the selected participants in another window.",
       paste ("function openKMPlot1 (table, dataset, ids) {",
	      "    var parts = ids.map(function(id){return id.substr(0,12);});",
	      "    childMessaging.push ({ cmd: 'viewKMPlot', chm: chm.mapName, colmeta: chm.column.labels.metaData, covariates: chm.column.classifications.classificationModel, table: table, dataset: dataset, group1: parts });",
	      "    window.open(chm.chmv + 'kmplot.html', '_blank');",
	      "}", "", sep="\n"), extraParams=c("table", "dataset"));

chmNewFunction ("openKMPlot2",
	"For axis type 'bio.tcga.barcode.sample', opens a dynamically generated Kaplan-Meier TCGA for the selected participants in another window.",
       paste ("function openKMPlot2 (table, dataset, ids1, ids2) {",
	      "    var parts1 = ids1.map(function(id){return id.substr(0,12);});",
	      "    var parts2 = ids2.map(function(id){return id.substr(0,12);});",
	      "    childMessaging.push ({ cmd: 'viewKMPlot', chm: chm.mapName, colmeta: chm.column.labels.metaData, covariates: chm.column.classifications.classificationModel, table: table, dataset: dataset, group1: parts1, group2: parts2 });",
	      "    window.open(chm.chmv + 'kmplot.html', 'kmplot');",
	      "}", "", sep="\n"), extraParams=c("table", "dataset"));

tcgaAddTumorType <- function (chm, tumortype) {

chmBindFunction ("openKMPlot1ForTCGA", "openKMPlot1", list(table='tcga', dataset=tumortype));
chmBindFunction ("openKMPlot2ForTCGA", "openKMPlot2", list(table='tcga', dataset=tumortype));
chmRegisterAxisFunction ("bio.tcga.barcode.sample", "View KM Plot", "openKMPlot1ForTCGA");
chmRegisterMatrixFunction ("bio.tcga.barcode.sample", "bio.tcga.barcode.sample", "View KM Plot", "openKMPlot2ForTCGA");

    chmAddProperty (chm, '!extraparam:bio.tcga.tumortype', tumortype)
}
