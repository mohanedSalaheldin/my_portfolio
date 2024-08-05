import 'package:flutter/material.dart';

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
        Icon(
          iconData,
          size: 18,
        ),
        const SizedBox(
          width: 2.0,
        ),
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
