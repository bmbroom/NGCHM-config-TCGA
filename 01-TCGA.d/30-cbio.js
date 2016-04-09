/** @axisfunction bio.tcga.barcode.sample
 *  @menuentry View in cBioPortal
 *  @name openCBIOPartPage
 *  @description Opens the cBIO portal page for the (first) selected label (which must be a TCGA participant id) in another window.
 *  @extraparams bio.cbioportal.studyid
 */
function openCBIOPartPage (studyid, ids) {
    var part = ids[0].substr(0,12);
    window.open('http://www.cbioportal.org/case.do?cancer_study_id=' + studyid + '&case_id=' + part, 'cbio');
}

/** @axisfunction bio.gene.hugo
 *  @menuentry View in cBioPortal
 *  @name openCBIOGenes
 *  @description Opens the cBIO portal page for the selected genes in another window.
 *  @extraparams bio.cbioportal.studyid
 */
function openCBIOGenes (studyid, genes) {
    window.open('http://www.cbioportal.org/ln?cancer_study_id=' + studyid + '&gene_list=' + genes.join("+"), 'cbio');
}

