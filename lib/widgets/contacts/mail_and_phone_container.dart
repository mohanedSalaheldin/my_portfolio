import 'package:flutter/material.dart';
import 'package:my_portfolio/models/contacts.dart';
import '../shared/contact_option.dart';

class MailAndPhoneContainer extends StatelessWidget {
  const MailAndPhoneContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MyContacts.location,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Divider(height: 2.0),
            const Text(
              'Contacts: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            ContactOption(
              contact: MyContacts.phone,
              iconData: Icons.call_outlined,
            ),
            ContactOption(
              contact: MyContacts.email,
              iconData: Icons.email_outlined,
            ),
          ],
        )
      ],
    );
  }
}
