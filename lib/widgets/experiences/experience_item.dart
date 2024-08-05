import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({
    super.key,
    this.hasNext = true,
    required this.year,
    required this.title,
    required this.company,
    required this.describtion,
  });
  final bool? hasNext;
  final String year;
  final String title;
  final String company;
  final String describtion;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: HexColor('#474559'),
              radius: 35.0,
              child: Text(
                year,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            hasNext!
                ? Container(
                    color: HexColor('#474559'),
                    height: 80.0,
                    width: 3,
                  )
                : const SizedBox(),
          ],
        ),
        const SizedBox(width: appDefaultPadding / 2),
        SizedBox(
          width: ResponsiveWidget.isTablet(context) ? null : 340.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ResponsiveWidget(
                desktop: SizedBox(
                  width: 345,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$title ',
                        style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        company,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                mobile: SizedBox(
                  width: 190,
                  child: Wrap(
                    children: [
                      Text(
                        '$title ',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        company,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: appDefaultPadding / 3),
              ResponsiveWidget(
                desktop: SizedBox(
                  width: 340,
                  child: Text(
                    describtion,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16.0),
                  ),
                ),
                tablet: SizedBox(
                  width: 450,
                  child: Text(
                    describtion,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16.0),
                  ),
                ),
                mobileLarge: SizedBox(
                  width: 280,
                  child: Text(
                    describtion,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16.0),
                  ),
                ),
                mobile: SizedBox(
                  width: 190,
                  child: Text(
                    describtion,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 14.0),
                  ),
                ),
              ),
              const SizedBox(height: appDefaultPadding / 2),
            ],
          ),
        ),
      ],
    );
  }
}
