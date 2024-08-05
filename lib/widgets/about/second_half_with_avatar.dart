import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/responsive.dart';

class SecondHalfWithAvatar extends StatelessWidget {
  const SecondHalfWithAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isMobile(context)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              alignment: ResponsiveWidget.isTablet(context)
                  ? Alignment.center
                  : Alignment.centerRight,
              fit: BoxFit.contain,
              'assets/images/profile.jpg',
              // semanticsLabel: 'Acme Logo',
            ),
          )
        : SizedBox(
            // color: Colors.blueGrey,

            height: 350,
            child: Image.asset(
              alignment: ResponsiveWidget.isTablet(context)
                  ? Alignment.center
                  : Alignment.centerRight,
              fit: BoxFit.contain,
              'assets/images/profile.jpg',
              // semanticsLabel: 'Acme Logo',
            ),
          );
  }
}
