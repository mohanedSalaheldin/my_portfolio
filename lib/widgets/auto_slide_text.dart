import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/responsive.dart';

class AutoSlideText extends StatefulWidget {
  final List<String> texts = [
    'Mohaned Salah!',
    'Mobile Developer',
    'Flutter Developer',
  ];
  final Duration duration;

  AutoSlideText({
    super.key,
    // required this.texts,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  State<AutoSlideText> createState() => _AutoSlideTextState();
}

class _AutoSlideTextState extends State<AutoSlideText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _offsetAnimation =
        Tween<Offset>(begin: const Offset(0, .2), end: const Offset(0, 0))
            .animate(_controller);
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 2), () {
          _controller.reverse().then((_) {
            setState(() {
              _currentIndex = (_currentIndex + 1) % widget.texts.length;
            });
            _controller.forward();
          });
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Text(
          widget.texts[_currentIndex],
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: HexColor('#ffc107'),
                fontSize: ResponsiveWidget.isMobileLarge(context) ? 34.0 : 36.0,
              ),
        ),
      ),
    );
  }
}
