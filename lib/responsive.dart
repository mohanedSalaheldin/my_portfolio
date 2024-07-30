import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.desktop,
    required this.mobile,
    this.mobileLarge,
    this.tablet,
  });

  final Widget desktop;
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width < 730;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 400;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (width >= 1024) {
      return desktop;
    } else if (width >= 750 && tablet != null) {
      return tablet!;
    } else if (width >= 450 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
