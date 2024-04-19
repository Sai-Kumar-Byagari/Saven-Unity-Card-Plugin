import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_sdk_saven_unity_card_method_channel.dart';

abstract class FlutterSdkSavenUnityCardPlatform extends PlatformInterface {
  /// Constructs a FlutterSdkSavenUnityCardPlatform.
  FlutterSdkSavenUnityCardPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSdkSavenUnityCardPlatform _instance = MethodChannelFlutterSdkSavenUnityCard();

  /// The default instance of [FlutterSdkSavenUnityCardPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSdkSavenUnityCard].
  static FlutterSdkSavenUnityCardPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSdkSavenUnityCardPlatform] when
  /// they register themselves.
  static set instance(FlutterSdkSavenUnityCardPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
