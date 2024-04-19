#ifndef FLUTTER_PLUGIN_FLUTTER_SDK_SAVEN_UNITY_CARD_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_SDK_SAVEN_UNITY_CARD_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_sdk_saven_unity_card {

class FlutterSdkSavenUnityCardPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterSdkSavenUnityCardPlugin();

  virtual ~FlutterSdkSavenUnityCardPlugin();

  // Disallow copy and assign.
  FlutterSdkSavenUnityCardPlugin(const FlutterSdkSavenUnityCardPlugin&) = delete;
  FlutterSdkSavenUnityCardPlugin& operator=(const FlutterSdkSavenUnityCardPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_sdk_saven_unity_card

#endif  // FLUTTER_PLUGIN_FLUTTER_SDK_SAVEN_UNITY_CARD_PLUGIN_H_
