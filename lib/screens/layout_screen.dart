import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/defualt_app_button.dart';

import '../widgets/hover_text_button.dart';
import 'about_section.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Responsive.isTablet(context)
          ? const Drawer(
              child: Column(
                children: [
                  HoverTextButton(text: 'About'),
                  SizedBox(height: appDefaultPadding * 2),
                  HoverTextButton(text: 'Projects'),
                  SizedBox(height: appDefaultPadding * 2),
                  HoverTextButton(text: 'Resume'),
                  SizedBox(height: appDefaultPadding * 2),
                  HoverTextButton(text: 'Contact'),
                ],
              ),
            )
          : null,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            buildAppBar(context),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobileLarge(context)
                    ? appDefaultPadding * 2
                    : appDefaultPadding * 4),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: appDefaultPadding * 4),
                AboutSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SliverAppBar buildAppBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      titleSpacing: Responsive.isMobileLarge(context)
          ? appDefaultPadding * 2
          : appDefaultPadding * 4,
      automaticallyImplyLeading: false,
      actions: Responsive.isTablet(context)
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
                  width: Responsive.isMobileLarge(context)
                      ? appDefaultPadding * 2
                      : appDefaultPadding * 4),
            ]
          : [
              Row(
                children: [
                  const HoverTextButton(text: 'About'),
                  const SizedBox(width: appDefaultPadding * 2),
                  const HoverTextButton(text: 'Projects'),
                  const SizedBox(width: appDefaultPadding * 2),
                  const HoverTextButton(text: 'Resume'),
                  const SizedBox(width: appDefaultPadding * 2),
                  const HoverTextButton(text: 'Contact'),
                  SizedBox(
                      width: Responsive.isMobileLarge(context)
                          ? appDefaultPadding * 2
                          : appDefaultPadding * 4),
                ],
              ),
            ],
      // centerTitle: Responsive.isTablet(context) ? true : false,
      title: const Row(
        // mainAxisAlignment: Responsive.isTablet(context)
        //     ? MainAxisAlignment.center
        //     : MainAxisAlignment.start,
        children: [
          Icon(Icons.computer_rounded),
          SizedBox(width: appDefaultPadding / 2),
          Text('Mahaned'),
        ],
      ),
    );
  }
}
