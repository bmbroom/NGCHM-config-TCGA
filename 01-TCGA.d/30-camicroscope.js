/** @axisfunction bio.tcga.barcode.sample
 *  @menuentry View caMicroscope
 *  @name openCaMicroscope
 *  @description Opens the caMicroscope page for the (first) selected label (which must be a TCGA participant id) in another window.
 *  @extraparams bio.camicroscope.studyid
 */
function openCaMicroscope (studyid, ids) {
    var part = ids[0].substr(0,12);
    window.open('http://quip1.bmi.stonybrook.edu/subject_data/index.php?subjectId=' + part + '&cancerType=' + studyid, 'slidearchive');
}

