import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: HexColor('#5b5b5b'),
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
    var specialTextStyle = TextStyle(
      color: appDefaultYallow,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );

    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: 'Designed by: ',
            style: textStyle,
            children: [
              TextSpan(
                text: 'Tooplate',
                style: specialTextStyle,
              ),
              TextSpan(
                text: ' and coded by ',
                style: textStyle,
              ),
              TextSpan(
                text: 'Mohaned Salaheldin',
                style: specialTextStyle,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8.0),
        Text(
          '© 2024 MOSD. All rights reserved.',
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ],
    );
  }
}
