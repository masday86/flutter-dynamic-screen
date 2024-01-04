import 'package:dynamic_screen/dynamic_screen.dart';
import 'package:flutter/material.dart';

class ScreenBuilder extends StatelessWidget {
  final Widget mobileChild;
  final Widget tabletChild;
  final Widget desktopChild;
  const ScreenBuilder(
      {super.key, required this.mobileChild, required this.tabletChild, required this.desktopChild});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return OrientationBuilder(
      builder: (context, orientation) {
        return LayoutBuilder(
          builder: (context, boxSizing) {
            if (DynamicScreen().getDeviceType(mediaQuery) == DeviceScreenType.Mobile){
              return mobileChild;
            }else if (DynamicScreen().getDeviceType(mediaQuery) == DeviceScreenType.Tablet){
              return tabletChild;
            }else {
              return desktopChild;
            }
          },
        );
      },
    );
  }
}
