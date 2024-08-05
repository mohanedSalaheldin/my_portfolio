import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/layout/hover_text_button.dart';

Drawer? appDrawer({
  required BuildContext context,
  required Function(int) onMenuTap,
}) {
  return ResponsiveWidget.isTablet(context)
      ? Drawer(
          child: Column(
            children: [
              const SizedBox(height: appDefaultPadding * 2),
              HoverTextButton(
                text: 'About',
                onTap: () {
                  onMenuTap(0);
                },
              ),
              const SizedBox(height: appDefaultPadding * 2),
              HoverTextButton(
                text: 'Projects',
                onTap: () {
                  onMenuTap(1);
                },
              ),
              const SizedBox(height: appDefaultPadding * 2),
              HoverTextButton(
                text: 'Resume',
                onTap: () {
                  onMenuTap(2);
                },
              ),
              const SizedBox(height: appDefaultPadding * 2),
              HoverTextButton(
                text: 'Contact',
                onTap: () {
                  onMenuTap(3);
                },
              ),
            ],
          ),
        )
      : null;
}
