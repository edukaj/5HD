#!/bin/bash
KEEP_FILE=${KEEP_FILE:-0}
VERBOSE=${VERBOSE:-0}
tmpFile=$(mktemp -p /tmp)

FORCE_COPY=${1:-""}

FILELIST_TO_DELETE=/tmp/file_to_delete
FILELIST_TO_MODIFY=/tmp/file_to_modify

rm -fr ${FILELIST_TO_DELETE} ${FILELIST_TO_MODIFY}

ssh ale@5hd createDiff ${FORCE_COPY} >${tmpFile}
while read line
do
	SIGN=`echo "${line}" | awk '{print $1}'`
	FILE=`echo "${line}" | awk '{print $2}'`
	PARSED_FILE=$(echo $FILE | cut -b2-)
	[ $VERBOSE -eq 1 ] && echo -en "Parsing this line:>>>$line<<<\nsign is ${SIGN}, file is ${FILE} and using now $(tput setaf 3)${PARSED_FILE}$(tput sgr0)\n"
	
	if [ "${SIGN}" == "+" ]; then
		echo "$(tput setaf 2)Add ${PARSED_FILE} $(tput sgr0)" 
		echo "${PARSED_FILE}" >> ${FILELIST_TO_MODIFY}
	fi

	if [ "${SIGN}" == "-" ]; then
		echo "$(tput setaf 1)Del ${PARSED_FILE} $(tput sgr0)" 
		echo "patch/${PARSED_FILE}" >> ${FILELIST_TO_DELETE}
	fi

	
done < ${tmpFile}
{ [ $KEEP_FILE -ne 1 ] && rm ${tmpFile} ; } || echo "$(tput setaf 4)Keeping temporary file $tmpFile$(tput sgr0)"

if [ -e ${FILELIST_TO_DELETE} ]; then
	while read line
	do
		rm ${line} 
	done < ${FILELIST_TO_DELETE}
fi

if [ -e ${FILELIST_TO_MODIFY} ]; then
	rsync -avzR --files-from=${FILELIST_TO_MODIFY} ale@5hd:/ patch
fi
