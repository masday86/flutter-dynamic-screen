//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dynamic_screen/dynamic_screen_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) dynamic_screen_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DynamicScreenPlugin");
  dynamic_screen_plugin_register_with_registrar(dynamic_screen_registrar);
}
