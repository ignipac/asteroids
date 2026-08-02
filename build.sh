#!/bin/bash

# if including a header .h file the .cpp file must be compiled for the linker to find the definitons
# use looping through .cpp file to compile 
# clang++ -std=c++20 $(find my_games/asteroids -name "*.cpp") -o asteroids


# Web export build via Emscripten
# EMSDK_PATH="$HOME/Developer/emsdk" # path to compiler
# source "$EMSDK_PATH/emsdk_env.sh" # shell script to compiler

# emcc -std=c++20 my_games/asteroids/asteroids.cpp my_games/asteroids/timer.cpp -o web/asteroids.html \
#   -I$HOME/Developer/Tools/emsdk/raylib/src \
#   $HOME/Developer/Tools/emsdk/raylib/src/libraylib.a \
#   -s USE_GLFW=3 -s ASYNCIFY \
#   --preload-file my_games/asteroids \
#   --shell-file shell.html
  
Mac build
clang++ -std=c++20 my_games/asteroids/asteroids.cpp my_games/asteroids/timer.cpp -o asteroids \
-I/opt/homebrew/include \
-L/opt/homebrew/lib -lraylib \
-framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo

# ---------------------------


# # Path to your emsdk folder (adjust if different)
# EMSDK_PATH="$HOME/Developer/emsdk"

# # Source the emsdk environment to setup paths & tools
# source "$EMSDK_PATH/emsdk_env.sh"

# # Build the game for WebAssembly HTML5
# emcc my_games/asteroids/asteroids.cpp my_games/asteroids/timer.cpp -o asteroids.html \
# -I/opt/homebrew/include \
# -L/opt/homebrew/lib -lraylib \
# -s USE_GLFW=3 -s ASYNCIFY --preload-file my_games/asteroids


# BUILD_TYPE=${1:-release}

# if [[ "$BUILD_TYPE" == "debug" ]]; then
#   echo "Building debug version..."
#   clang++ -g -DDEBUG my_games/asteroids/asteroids.cpp -o sandbox \
#     -I/opt/homebrew/include \
#     -L/opt/homebrew/lib -lraylib \
#     -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo
# else
#   echo "Building release version..."
#   clang++ -O3 -DNDEBUG xp/main.cpp -o asteroids \
#     -I/opt/homebrew/include \
#     -L/opt/homebrew/lib -lraylib \
#     -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo
# fi
