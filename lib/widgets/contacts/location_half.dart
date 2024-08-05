import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/contacts/mail_and_phone_container.dart';
import 'package:my_portfolio/widgets/contacts/my_location_widget.dart';

class LocationHalf extends StatelessWidget {
  const LocationHalf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ResponsiveWidget(
      desktop: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        height: 550,
        width: 400,
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: MyLocationWidget(),
            ),
            Container(
              height: 150,
              color: HexColor('#474559'),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: MailAndPhoneContainer(),
              ),
            ),
          ],
        ),
      ),
      mobileLarge: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        height: (screenWidth - (appDefaultPadding * 4)) + 150,
        width: (screenWidth - (appDefaultPadding * 4)),
        child: Column(
          children: [
            SizedBox(
              height: (screenWidth - (appDefaultPadding * 4)),
              width: (screenWidth - (appDefaultPadding * 4)),
              child: MyLocationWidget(),
            ),
            Container(
              height: 150,
              color: HexColor('#474559'),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: MailAndPhoneContainer(),
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        height: (screenWidth - (appDefaultPadding * 2)) + 150,
        width: (screenWidth - (appDefaultPadding * 2)),
        child: Column(
          children: [
            SizedBox(
              height: (screenWidth - (appDefaultPadding * 2)),
              width: (screenWidth - (appDefaultPadding * 2)),
              child: MyLocationWidget(),
            ),
            Container(
              height: 150,
              color: HexColor('#474559'),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: MailAndPhoneContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
