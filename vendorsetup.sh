# Get proprietary files
PATH=$PATH:$PWD/vendor/osr/tools ; export PATH
VENDOR=$PWD/vendor/osr
if [ ! -d "vendor/osr/proprietary" ]; then
echo "Get proprietary files"
vendor/osr/./get-prebuilts
fi

