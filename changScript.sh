mkdir "$TARGET_BUILD_DIR/$PRODUCT_NAME.app/Contents/dylib"
cp -f /Users/apple/Desktop/add/libaddmatrix/addMatrix/addMatrix/libaddmatrix.dylib "$TARGET_BUILD_DIR/$PRODUCT_NAME.app/Contents/dylib/"

install_name_tool -change @loader_path/libaddmatrix.dylib @loader_path/../dylib/libaddmatrix.dylib "$TARGET_BUILD_DIR/$PRODUCT_NAME.app/Contents/MacOS/$PRODUCT_NAME"
