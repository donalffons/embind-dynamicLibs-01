#include "library.h"

#include <emscripten/bind.h>
using namespace emscripten;

EMSCRIPTEN_BINDINGS(library) {
  function("test", &test);
}
