import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dynamic_screen_platform_interface.dart';

/// An implementation of [DynamicScreenPlatform] that uses method channels.
class MethodChannelDynamicScreen extends DynamicScreenPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('new_dynamic_screen');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
