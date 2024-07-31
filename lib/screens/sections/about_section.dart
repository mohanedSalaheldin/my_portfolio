import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/auto_slide_text.dart';
import 'package:my_portfolio/widgets/defualt_app_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isTablet(context)
        ? const SizedBox(
            // height: 500,
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
              SizedBox(width: appDefaultPadding / 2),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SecondHalfWithAvatar(),
                ),
              ),
            ],
          );
  }
}

class SecondHalfWithAvatar extends StatelessWidget {
  const SecondHalfWithAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isMobile(context)
        ? SizedBox(
            // color: Colors.blueGrey,

            height: 150,
            child: SvgPicture.asset(
              alignment: ResponsiveWidget.isTablet(context)
                  ? Alignment.center
                  : Alignment.centerRight,
              fit: BoxFit.contain,
              'assets/images/image.svg',
              semanticsLabel: 'Acme Logo',
            ),
          )
        : SizedBox(
            // color: Colors.blueGrey,

            height: 300,
            child: SvgPicture.asset(
              alignment: ResponsiveWidget.isTablet(context)
                  ? Alignment.center
                  : Alignment.centerRight,
              fit: BoxFit.contain,
              'assets/images/image.svg',
              semanticsLabel: 'Acme Logo',
            ),
          );
  }
}

class FirstHalfWithTexts extends StatelessWidget {
  const FirstHalfWithTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
            ResponsiveWidget.isTablet(context)
                ? 'Building a successful product is a challenge. I am highly energetic in userexperience design, interfaces and web development.'
                : 'Building a successful product is a challenge. I am highly energetic in user experience design, interfaces and web development.',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: HexColor('#919191'),
                ),
          ),
          const SizedBox(height: appDefaultPadding),
          ResponsiveWidget.isTablet(context)
              ? Column(
                  children: [
                    DefualtAppButton(
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
                    ),
                    const SizedBox(height: appDefaultPadding / 2),
                    DefualtAppButton(
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
                    ),
                  ],
                )
              : Row(
                  children: [
                    DefualtAppButton(
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
                    ),
                    const SizedBox(width: appDefaultPadding / 2),
                    DefualtAppButton(
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
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
