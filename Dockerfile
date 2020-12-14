FROM emscripten/emsdk:2.0.10

WORKDIR /app/

ENTRYPOINT [ "./run.sh" ]
