import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/layout/hover_text_button.dart';

AppBar buildAppBar({
  required BuildContext context,
  required Function(int) onMenuTap,
}) {
  return AppBar(
    // floating: true,
    scrolledUnderElevation: 0,
    forceMaterialTransparency: false,
    titleSpacing: ResponsiveWidget.isTablet(context)
        ? (ResponsiveWidget.isMobile(context)
            ? appDefaultPadding
            : appDefaultPadding * 2)
        : appDefaultPadding * 4,
    automaticallyImplyLeading: false,
    actions: ResponsiveWidget.isTablet(context)
        ? [
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            SizedBox(
              width: ResponsiveWidget.isTablet(context)
                  ? (ResponsiveWidget.isMobile(context)
                      ? appDefaultPadding
                      : appDefaultPadding * 2)
                  : appDefaultPadding * 4,
            ),
          ]
        : [
            Row(
              children: [
                HoverTextButton(
                  text: 'About',
                  onTap: () {
                    onMenuTap(0);
                  },
                ),
                const SizedBox(width: appDefaultPadding * 2),
                HoverTextButton(
                  text: 'Projects',
                  onTap: () {
                    onMenuTap(1);
                  },
                ),
                const SizedBox(width: appDefaultPadding * 2),
                HoverTextButton(
                  text: 'Resume',
                  onTap: () {
                    onMenuTap(2);
                  },
                ),
                const SizedBox(width: appDefaultPadding * 2),
                HoverTextButton(
                  text: 'Contact',
                  onTap: () {
                    onMenuTap(3);
                  },
                ),
                SizedBox(
                    width: ResponsiveWidget.isMobileLarge(context)
                        ? appDefaultPadding * 2
                        : appDefaultPadding * 4),
              ],
            ),
          ],
    title: Row(
      children: [
        Image.asset(
          'assets/images/icon1.png',
          width: 20.0,
        ),
        // Icon(Icons.computer_rounded),
        const SizedBox(width: appDefaultPadding / 2),
        Text(
          'Mahaned',
          style: TextStyle(color: appDefaultYallow),
        ),
      ],
    ),
  );
}
