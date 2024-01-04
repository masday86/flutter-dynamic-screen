import 'package:dynamic_screen/dynamic_screen_platform_interface.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum DeviceScreenType { Mobile, Tablet, Desktop }

class DynamicScreen {
  final Orientation? orientation;
  final DeviceScreenType? deviceType;
  final Size? screenSize;
  final Size? localWidgetSize;
  DynamicScreen({
    this.orientation,
    this.deviceType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }

  DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
    double deviceWidth = 0;
    deviceWidth = mediaQuery.size.width;

    if (deviceWidth > 1000) {
      return DeviceScreenType.Desktop;
    }
    if (deviceWidth > 600) {
      return DeviceScreenType.Tablet;
    }
    return DeviceScreenType.Mobile;
  }

    Future<String?> getPlatformVersion() {
    return DynamicScreenPlatform.instance.getPlatformVersion();
  }
}
