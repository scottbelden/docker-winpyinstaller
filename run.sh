cd $(dirname $1)

SOURCE_PATH=$PWD/$(dirname $1)
SCRIPT_PATH=$PWD/$(basename $2)

OUTPUT_FOLDER="pyinstaller.out"
if [ -d "$OUTPUT_FOLDER" ]; then
  rm -rf $OUTPUT_FOLDER
fi
mkdir $OUTPUT_FOLDER

OUTPUT_PATH=$PWD/$(basename $OUTPUT_FOLDER)

docker run --rm=true -it -v $SOURCE_PATH:/source -v $OUTPUT_PATH:/artifact -v $SCRIPT_PATH:/script winpyinstaller:latest
