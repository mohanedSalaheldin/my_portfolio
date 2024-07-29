import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class DefualtAppButton extends StatelessWidget {
  const DefualtAppButton({
    super.key,
    required this.backgroundColor,
    // required this.contentColor,
    required this.content,
  });
  final Color backgroundColor;
  // final Color contentColor;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: appDefaultPadding),
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: content,
      ),
    );
  }
}
