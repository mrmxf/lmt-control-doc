# post-process shell script for this document
# all file paths are relative to the root folder of the project
#
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
EKO="${Cwarning}-->${Ctxt} post-process${Cinfo}"
#
# rename the docs to docs folder
SRC_DFT=lmt-register-draft
SRC_PUB=lmt-register-pub
DST=$OUTPUT_FOLDER

#rename the draft if it has been created
SRC="$DST/$SRC_DFT.docx"
FN="$DST/$DOC_PREFIX-$DOC_TITLE-$MDPUB_DATE($DOC_COMMENT-draft).docx"
if [ -f "$SRC" ] ; then
  mv "$SRC" "$FN"
  echo -e "$EKO moved file to $Cfile$FN$Coff"
fi

#rename the publish copy
SRC="$DST/$SRC_PUB.docx"
FN="$DST/$DOC_PREFIX-$DOC_TITLE-$MDPUB_DATE($DOC_COMMENT).docx"
if [ -f "$SRC" ] ; then
  mv "$SRC" "$FN"
  echo -e "$EKO moved file to $Cfile$FN$Coff"
fi

#copy the schema
SRC="src/schema/lmt-schema.xml"
FN="$DST/${DOC_PREFIX}a-$DOC_TITLE-schema-$MDPUB_DATE($DOC_COMMENT).docx"
if [ -f "$SRC" ] ; then
  cp "$SRC" "$FN"
  echo -e "$EKO copied schema to $Cfile$FN$Coff"
fi
