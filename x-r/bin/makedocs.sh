# md2docx2pdf makedoc script - Linux
script_version=02

#this glob is used to find all the yml files using my naming convention
glob=*/ymldg-*.yml

#outputfolder name
output=dist

# iterate over all yml files in the root folder and run pandoc
for f in $glob
do
  echo "--  --  --  --  --  --  --"
  echo "Pandoc script (v$script_version) using defaults=$f"
  pandoc --lua-filter x-r/filter/smpte-st-numbering.lua --defaults=$f
done

#version is used to identify the right files
version=01
# copy any extra resources required to the output folder
#cp src-imf-reg-api-doc/ela-openapi.v$version.json         $output/element-a-openapi.json
