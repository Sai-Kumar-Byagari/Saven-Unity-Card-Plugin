#include "include/flutter_sdk_saven_unity_card/flutter_sdk_saven_unity_card_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_sdk_saven_unity_card_plugin.h"

void FlutterSdkSavenUnityCardPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_sdk_saven_unity_card::FlutterSdkSavenUnityCardPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
