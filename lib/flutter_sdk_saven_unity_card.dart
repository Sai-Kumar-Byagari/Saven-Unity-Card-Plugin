
import 'flutter_sdk_saven_unity_card_platform_interface.dart';

class FlutterSdkSavenUnityCard {
  Future<String?> getPlatformVersion() {
    return FlutterSdkSavenUnityCardPlatform.instance.getPlatformVersion();
  }
}
