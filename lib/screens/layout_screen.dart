import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/layout/app_appbar.dart';
import 'package:my_portfolio/widgets/layout/app_drawer.dart';
import '../widgets/layout/layout_sized_box.dart';
import 'sections/about_section.dart';
import 'sections/contact_info_section.dart';
import 'sections/experience_and_education_section.dart';
import 'sections/projects_section.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({super.key});
  final scrollController = ScrollController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> globalKeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    double calculatedPadding = ResponsiveWidget.isTablet(context)
        ? (ResponsiveWidget.isMobile(context)
            ? appDefaultPadding
            : appDefaultPadding * 2)
        : appDefaultPadding * 4;

    return Scaffold(
      extendBodyBehindAppBar: false,
      key: scaffoldKey,
      drawer: appDrawer(
        context: context,
        onMenuTap: (int index) {
          scaffoldKey.currentState!.closeDrawer();
          scrollToSection(index);
        },
      ),
      appBar: buildAppBar(
        context: context,
        onMenuTap: (int index) {
          scrollToSection(index);
        },
      ),
      body: Container(
        constraints: const BoxConstraints(maxWidth: 1440),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: calculatedPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LayoutSizedBox(key: globalKeys[0]),
                const AboutSection(),
                const LayoutSizedBox(),
                ProjectsSection(key: globalKeys[1]),
                const LayoutSizedBox(),
                ExperienceAndEducationSection(key: globalKeys[2]),
                const LayoutSizedBox(),
                ContactInfoSection(key: globalKeys[3]),
                const LayoutSizedBox(),
                const Footer(),
                const LayoutSizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void scrollToSection(int index) {
    var key = globalKeys[index];
    Scrollable.ensureVisible(
      key.currentContext!,
      curve: Easing.standard,
      duration: const Duration(milliseconds: 500),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Copyright © 2024 Mohaned. All rights reserved',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: HexColor('#5b5b5b'),
        fontSize: 16,
      ),
    );
  }
}
