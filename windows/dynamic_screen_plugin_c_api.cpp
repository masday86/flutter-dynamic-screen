#include "include/dynamic_screen/dynamic_screen_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dynamic_screen_plugin.h"

void DynamicScreenPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dynamic_screen::DynamicScreenPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
