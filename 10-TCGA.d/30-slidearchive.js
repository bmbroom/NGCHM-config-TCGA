/** @axisfunction bio.tcga.barcode.sample
 *  @menuentry View SlideArchive
 *  @name openSlideArchive
 *  @description Opens the Cancer Digital Slide Archive page for the (first) selected label (which must be a TCGA participant id) in another window.
 */
function openSlideArchive (ids) {
    var part = ids[0].substr(0,12);
    window.open('http://cancer.digitalslidearchive.net/index_mskcc.php?slide_name=' + part, 'slidearchive');
}
