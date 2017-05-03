# getTempFileFromURL.sh
#############################################################################
#
# Obtain a work file, if it doesn't already exist.
#
# Reference:
#
# http://stackoverflow.com/questions/793858/how-to-mkdir-only-if-a-dir-does-not-already-exist
# http://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
#
#############################################################################
fn="${1##*/}"
if [ -e "${DOWNLOADS}/${fn}" ]
then
echo "${DOWNLOADS}/${fn} already exists, skipping download."
else
curl -O $1
mv $fn "${DOWNLOADS}/"
fi
