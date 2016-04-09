
chmNewFunction ("makeTCGANotice", "Populates a dialog to contain a TCGA publication policy notice",
    paste ("function makeTCGANotice (p){",
	   "  p.append('<H1>TCGA Publication Guidelines</H1>');",
	   "  p.append ('<P>Before using TCGA data, please read <A href=\"http://cancergenome.nih.gov/publications/publicationguidelines\" target=\"_blank\">TCGA guidelines for publication and moratoriums</A>.</P>');",
	   "  return p;",
	   "}", "", sep="\n"));

#' Create a TCGA data publication notice for adding to a NGCHM.
#'
#' @return A ngchmDialog containing the notice.
#'
#' @export

tcgaCreateNotice <- function () {
    chmNewDialog ("tcgaPubGuide", "TCGA Publication Guidelines", chmGetFunction ("makeTCGANotice"))
}

#' Add TCGA data publication notice to a CHM.
#'
#' @param chm NG-CHM to add the publication notice too.
#'
#' @return The chm with the added notice.
#'
#' @export

tcgaAddNotice <- function (chm) {
    chmAdd (chm, tcgaCreateNotice())
}

