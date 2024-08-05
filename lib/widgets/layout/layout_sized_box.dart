import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';

class LayoutSizedBox extends StatelessWidget {
  const LayoutSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: ResponsiveWidget.isMobileLarge(context)
            ? appDefaultPadding * 3
            : appDefaultPadding * 7);
  }
}
