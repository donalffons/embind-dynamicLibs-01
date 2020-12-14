mkdir -p build

emcc \
  --bind ./main-embind.cpp \
  -s ENVIRONMENT='web' \
  -s EXPORT_ES6=1 \
  -s USE_ES6_IMPORT_META=0 \
  -s MAIN_MODULE=1 \
  -s ASSERTIONS=2 \
  -o ./build/main.js

emcc \
  library.cpp \
  --bind ./library-embind.cpp \
  -s ENVIRONMENT='web' \
  -s EXPORT_ES6=1 \
  -s USE_ES6_IMPORT_META=0 \
  -s SIDE_MODULE=1 \
  -s ASSERTIONS=2 \
  -o ./build/library.wasm
