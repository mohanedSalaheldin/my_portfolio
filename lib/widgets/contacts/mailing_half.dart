import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/shared/custom_text_formfield.dart';
import 'package:my_portfolio/widgets/about/defualt_app_button.dart';
import 'package:my_portfolio/widgets/shared/title_widget.dart';

class MailingHalf extends StatefulWidget {
  const MailingHalf({super.key});

  @override
  State<MailingHalf> createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<MailingHalf> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TitleWidget(title: "Interested to work together? Let's talk"),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: _nameController,
            hintText: 'Your Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: _emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: _messageController,
            hintText: 'Message',
            maxLines: ResponsiveWidget.isTablet(context) ? 5 : 12,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your message';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          DefualtAppButton(
            backgroundColor: appDefaultYallow,
            content: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Send',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
