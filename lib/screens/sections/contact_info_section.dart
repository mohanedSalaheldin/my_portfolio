import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:latlng/latlng.dart';
import 'package:latlong2/latlong.dart';
// import 'package:latlng/latlng.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';

import '../../widgets/my_location_widget.dart';

class ContactInfoSection extends StatelessWidget {
  const ContactInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isTablet(context)
        ? const Column(
            children: [
              LocationHalf(),
              SizedBox(height: appDefaultPadding / 2),
              MailingHalf(),
            ],
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LocationHalf(),
              SizedBox(width: appDefaultPadding / 2),
              Expanded(
                flex: 1,
                child: MailingHalf(),
              ),
            ],
          );
  }
}

class MailingHalf extends StatelessWidget {
  const MailingHalf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Text("Right"),
    );
  }
}

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
        height: 650,
        width: 500,
        child: Column(
          children: [
            const SizedBox(
              height: 500,
              width: 500,
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
        height: 550,
        width: 400,
        child: Column(
          children: [
            const SizedBox(
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
              child: const MyLocationWidget(),
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
    );
  }
}

class MailAndPhoneContainer extends StatelessWidget {
  const MailAndPhoneContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact me: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            ContactOption(
              contact: "+20 15 0747 7210",
              iconData: Icons.call_outlined,
            ),
            ContactOption(
              contact: "mohanedsalaheldin24@gmail.com",
              iconData: Icons.email_outlined,
            ),
          ],
        )
      ],
    );
  }
}

class ContactOption extends StatelessWidget {
  const ContactOption({
    super.key,
    required this.iconData,
    required this.contact,
  });
  final IconData iconData;
  final String contact;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(
        //   iconData,
        //   size: 18,
        // ),
        // const SizedBox(
        //   width: 5.0,
        // ),
        Text(
          contact,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
