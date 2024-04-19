import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdk_saven_unity_card/flutter_sdk_saven_unity_card.dart';
import 'package:flutter_sdk_saven_unity_card/flutter_sdk_saven_unity_card_platform_interface.dart';
import 'package:flutter_sdk_saven_unity_card/flutter_sdk_saven_unity_card_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSdkSavenUnityCardPlatform
    with MockPlatformInterfaceMixin
    implements FlutterSdkSavenUnityCardPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterSdkSavenUnityCardPlatform initialPlatform = FlutterSdkSavenUnityCardPlatform.instance;

  test('$MethodChannelFlutterSdkSavenUnityCard is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSdkSavenUnityCard>());
  });

  test('getPlatformVersion', () async {
    FlutterSdkSavenUnityCard flutterSdkSavenUnityCardPlugin = FlutterSdkSavenUnityCard();
    MockFlutterSdkSavenUnityCardPlatform fakePlatform = MockFlutterSdkSavenUnityCardPlatform();
    FlutterSdkSavenUnityCardPlatform.instance = fakePlatform;

    expect(await flutterSdkSavenUnityCardPlugin.getPlatformVersion(), '42');
  });
}
