import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/contacts.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/about/defualt_app_button.dart';
import '../../widgets/about/first_half_with_texts.dart';
import '../../widgets/about/second_half_with_avatar.dart';
import 'dart:js' as js;

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isTablet(context)
        ? const SizedBox(
            child: Column(
              children: [
                FirstHalfWithTexts(),
                SizedBox(height: appDefaultPadding * 4),
                SecondHalfWithAvatar(),
              ],
            ),
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: FirstHalfWithTexts(),
              ),
              SizedBox(width: appDefaultPadding),
              Align(
                alignment: Alignment.centerLeft,
                child: SecondHalfWithAvatar(),
              ),
            ],
          );
  }
}

class LetsTalkBtn extends StatelessWidget {
  const LetsTalkBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefualtAppButton(
      onTap: () {
        js.context.callMethod('open', [MyContacts.linktree]);
      },
      backgroundColor: HexColor('#eeeeee'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Let\'s Talk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: HexColor('#474559'),
            ),
          ),
          const SizedBox(width: appDefaultPadding / 4),
          Icon(
            Icons.telegram_outlined,
            color: HexColor('#474559'),
          ),
        ],
      ),
    );
  }
}

class DownloadResumeBtn extends StatelessWidget {
  const DownloadResumeBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefualtAppButton(
      onTap: () {
        js.context.callMethod('open', [MyContacts.resumeURL]);
      },
      backgroundColor: HexColor('#474559'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Download Resume',
            style: TextStyle(
              color: HexColor('#eeeeee'),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: appDefaultPadding / 4),
          Icon(
            Icons.download_outlined,
            color: HexColor('#eeeeee'),
          ),
        ],
      ),
    );
  }
}
