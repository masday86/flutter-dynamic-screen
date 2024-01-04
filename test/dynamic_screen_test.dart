import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_screen/dynamic_screen.dart';
import 'package:dynamic_screen/dynamic_screen_platform_interface.dart';
import 'package:dynamic_screen/dynamic_screen_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDynamicScreenPlatform
    with MockPlatformInterfaceMixin
    implements DynamicScreenPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DynamicScreenPlatform initialPlatform = DynamicScreenPlatform.instance;

  test('$MethodChannelDynamicScreen is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDynamicScreen>());
  });

  test('getPlatformVersion', () async {
    DynamicScreen dynamicScreenPlugin = DynamicScreen();
    MockDynamicScreenPlatform fakePlatform = MockDynamicScreenPlatform();
    DynamicScreenPlatform.instance = fakePlatform;

    expect(await dynamicScreenPlugin.getPlatformVersion(), '42');
  });
}
