import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/defualt_app_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive.isTablet(context)
        ? const SizedBox(
            // height: 500,
            child: Column(
              children: [
                FirstHalfWithTexts(),
                SizedBox(height: appDefaultPadding),
                SecondHalfWithAvatar(),
              ],
            ),
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: FirstHalfWithTexts(),
              ),
              // SizedBox(width: appDefaultPadding / 2),
              Flexible(
                child: SecondHalfWithAvatar(),
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
    return SizedBox(
      height: 300,
      child: SvgPicture.asset(
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
    return SizedBox(
      height: 380,
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
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Responsive.isMobileLarge(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey folks, I\'m ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize:
                                Responsive.isMobileLarge(context) ? 34.0 : 38.0,
                          ),
                    ),
                    Text(
                      'Mohaned!',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: HexColor('#ffc107'),
                            fontSize:
                                Responsive.isMobileLarge(context) ? 34.0 : 38.0,
                          ),
                    ),
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
                    Text(
                      'Mohaned!',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: HexColor('#ffc107'),
                            fontSize: 36.0,
                            // fontSize:
                            //     Responsive.isMobileLarge(context) ? 30.0 : 38.0,
                          ),
                    ),
                  ],
                ),
          Text(
            Responsive.isTablet(context)
                ? 'Building a successful product is a challenge. I am highly energetic in userexperience design, interfaces and web development.'
                : 'Building a successful product is a challenge. I am highly energetic in user experience design, interfaces and web development.',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: HexColor('#919191'),
                ),
          ),
          const SizedBox(height: appDefaultPadding),
          Responsive.isTablet(context)
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
