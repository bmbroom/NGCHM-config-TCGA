
#' Return Axis Type corresponding to an example TCGA barcode id.
#'
#' @param barcode example TCGA barcode string
#' @export

tcgaBarcodeType <- function (barcode) {
    full <- "bio.tcga.barcode.sample.vial.portion.analyte.aliquot"
    return (paste(strsplit(full,'\\.')[[1]][1:(1+length(strsplit(barcode,"-")[[1]]))],collapse="."));
}

