#include <imgui.cpp>
#include <imgui_demo.cpp>
#include <imgui_draw.cpp>
#include <examples/imgui_impl_opengl3.cpp>
#include <examples/imgui_impl_sdl.cpp>
#include <imgui_widgets.cpp>
IMGUI_SRC=imgui.cpp imgui_demo.cpp imgui_draw.cpp examples/imgui_impl_opengl3.cpp examples/imgui_impl_sdl.cpp imgui_widgets.cpp

_INLCUDE_F=../include .
INCLUDE_F=$(patsubst %, -I%, $(_INLCUDE_F))

OPENGL_LOADER=IMGUI_IMPL_OPENGL_LOADER_GLAD
imgui.so: $(IMGUI_SRC)
	$(CXX) $(IMGUI_SRC) -o $@ $(INCLUDE_F) -O3 -shared -fPIC -D$(OPENGL_LOADER)

.PHONY: clear
clear:
	rm -f imgui.so