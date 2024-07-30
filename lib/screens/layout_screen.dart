import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/auto_slide_text.dart';
import 'package:my_portfolio/widgets/defualt_app_button.dart';

import '../widgets/hover_text_button.dart';
import 'about_section.dart';
import 'projects_section.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ResponsiveWidget.isTablet(context)
          ? const Drawer(
              child: Column(
                children: [
                  SizedBox(height: appDefaultPadding * 2),
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
        body: Container(
          constraints: const BoxConstraints(maxWidth: 1440),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveWidget.isTablet(context)
                      ? appDefaultPadding * 2
                      : appDefaultPadding * 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: ResponsiveWidget.isMobileLarge(context)
                          ? appDefaultPadding * 3
                          : appDefaultPadding * 6),
                  const AboutSection(),
                  SizedBox(
                      height: ResponsiveWidget.isMobileLarge(context)
                          ? appDefaultPadding * 3
                          : appDefaultPadding * 6),
                  const ProjectsSection(),
                  SizedBox(
                      height: ResponsiveWidget.isMobileLarge(context)
                          ? appDefaultPadding * 3
                          : appDefaultPadding * 6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SliverAppBar buildAppBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      titleSpacing: ResponsiveWidget.isMobileLarge(context)
          ? appDefaultPadding * 2
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
                  width: ResponsiveWidget.isMobileLarge(context)
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
                      width: ResponsiveWidget.isMobileLarge(context)
                          ? appDefaultPadding * 2
                          : appDefaultPadding * 4),
                ],
              ),
            ],
      title: const Row(
        children: [
          Icon(Icons.computer_rounded),
          SizedBox(width: appDefaultPadding / 2),
          Text('Mahaned'),
        ],
      ),
    );
  }
}
