Build: `docker build -t test .`

Run: `docker run -it --net=host -v "$(pwd)":"/app/" test`

Visit: `http://localhost:5000/javascript/`

Problem:

ASSERTIONS=2 yields
```
Uncaught (in promise) RuntimeError: abort(stack overflow) at Error
    at jsStackTrace (http://localhost:5000/emscripten/build/main.js:1806:19)
    at stackTrace (http://localhost:5000/emscripten/build/main.js:2328:16)
    at abort (http://localhost:5000/emscripten/build/main.js:1547:44)
    at ___handle_stack_overflow (http://localhost:5000/emscripten/build/main.js:2560:7)
    at _ZN36EmscriptenBindingInitializer_libraryC1Ev (<anonymous>:wasm-function[6]:0x564)
    at <anonymous>:wasm-function[5]:0x53b
    at <anonymous>:wasm-function[13]:0x777
    at __post_instantiate (<anonymous>:wasm-function[3]:0x516)
    at callRuntimeCallbacks (http://localhost:5000/emscripten/build/main.js:1771:11)
    at initRuntime (http://localhost:5000/emscripten/build/main.js:1385:3)
    at abort (http://localhost:5000/emscripten/build/main.js:1553:11)
    at ___handle_stack_overflow (http://localhost:5000/emscripten/build/main.js:2560:7)
    at _ZN36EmscriptenBindingInitializer_libraryC1Ev (<anonymous>:wasm-function[6]:0x564)
    at <anonymous>:wasm-function[5]:0x53b
    at <anonymous>:wasm-function[13]:0x777
    at __post_instantiate (<anonymous>:wasm-function[3]:0x516)
    at callRuntimeCallbacks (http://localhost:5000/emscripten/build/main.js:1771:11)
    at initRuntime (http://localhost:5000/emscripten/build/main.js:1385:3)
    at doRun (http://localhost:5000/emscripten/build/main.js:52684:5)
    at run (http://localhost:5000/emscripten/build/main.js:52706:5)
```