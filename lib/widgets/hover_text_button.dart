import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HoverTextButton extends StatefulWidget {
  final String text;

  const HoverTextButton({super.key, required this.text});

  @override
  State<HoverTextButton> createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _whiteTextOffset;
  late Animation<Offset> _yellowTextOffset;
  late Animation<double> _fadeOut;
  late Animation<double> _fadeIn;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _whiteTextOffset =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0, -1))
            .animate(_controller);
    _yellowTextOffset =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(_controller);

    _fadeOut = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _controller.forward(),
      onExit: (_) => _controller.reverse(),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SlideTransition(
            position: _whiteTextOffset,
            child: FadeTransition(
              opacity: _fadeOut,
              child: Text(
                widget.text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: HexColor('#c9c9c9'),
                    ),
              ),
            ),
          ),
          SlideTransition(
            position: _yellowTextOffset,
            child: FadeTransition(
              opacity: _fadeIn,
              child: Text(
                widget.text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: HexColor('#ffc107'),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
