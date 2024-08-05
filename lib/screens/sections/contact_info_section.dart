import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import '../../widgets/contacts/location_half.dart';
import '../../widgets/contacts/mailing_half.dart';

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
              SizedBox(height: appDefaultPadding * 2),
              MailingHalf(),
            ],
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationHalf(),
              SizedBox(width: appDefaultPadding * 3),
              Expanded(
                child: MailingHalf(),
              ),
            ],
          );
  }
}
