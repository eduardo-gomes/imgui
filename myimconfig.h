#pragma once

#ifdef _WIN32
#define IMGUI_API __declspec(dllexport)
#else
#define IMGUI_API __attribute__((visibility("default")))
#endif