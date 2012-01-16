# Get proprietary files
if [ ! -d "vendor/osr/proprietary" ]; then
echo "Get proprietary files"
vendor/osr/./get-prebuilts
fi
echo " "
lunch
