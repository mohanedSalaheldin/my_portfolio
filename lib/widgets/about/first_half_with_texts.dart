import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/screens/sections/about_section.dart';
import 'package:my_portfolio/widgets/about/auto_slide_text.dart';

class FirstHalfWithTexts extends StatelessWidget {
  const FirstHalfWithTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var intro =
        'I design and develop mobile apps with a focus on user experience, intuitive interfaces, and innovative web solutions.';
    return SizedBox(
      height: ResponsiveWidget.isMobileLarge(context) ? 440 : 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: HexColor('#0d0c15')),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Text(
              'Welcome to My Portfolio website!',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize:
                      ResponsiveWidget.isMobileLarge(context) ? 12.0 : 16.0),
            ),
          ),
          width < 1100
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey folks, I\'m ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: ResponsiveWidget.isMobileLarge(context)
                                ? 34.0
                                : 38.0,
                          ),
                    ),
                    AutoSlideText(),
                  ],
                )
              : Wrap(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hey folks, I\'m ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 36.0,
                            //     Responsive.isMobileLarge(context) ? 30.0 : 38.0,
                          ),
                    ),
                    AutoSlideText(),
                  ],
                ),
          Text(
            intro,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: HexColor('#919191'),
                ),
          ),
          const SizedBox(height: appDefaultPadding),
          ResponsiveWidget.isTablet(context)
              ? const Column(
                  children: [
                    DownloadResumeBtn(),
                    SizedBox(height: appDefaultPadding / 2),
                    LetsTalkBtn(),
                  ],
                )
              : const Row(
                  children: [
                    DownloadResumeBtn(),
                    SizedBox(width: appDefaultPadding / 2),
                    LetsTalkBtn(),
                  ],
                ),
        ],
      ),
    );
  }
}
