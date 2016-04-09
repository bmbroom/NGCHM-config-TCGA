

tcgaAddCBIOStudyId <- function (chm, studyid) {
    chmAddProperty (chm, '!extraparam:bio.cbioportal.studyid', studyid)
}
