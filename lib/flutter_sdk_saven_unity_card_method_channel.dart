import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_sdk_saven_unity_card_platform_interface.dart';

/// An implementation of [FlutterSdkSavenUnityCardPlatform] that uses method channels.
class MethodChannelFlutterSdkSavenUnityCard extends FlutterSdkSavenUnityCardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_sdk_saven_unity_card');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
