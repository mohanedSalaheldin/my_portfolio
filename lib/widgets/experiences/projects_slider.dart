import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWithIndicator extends StatefulWidget {
  final List<Widget> items;
  const CarouselWithIndicator({super.key, required this.items});
  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var width2 = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: widget.items.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: width2,
                  height: ResponsiveWidget.isMobile(context)
                      ? null
                      : (ResponsiveWidget.isTablet(context) ? 600 : 900),
                  child: item,
                );
              },
            );
          }).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            padEnds: false,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(height: 16),
        AnimatedSmoothIndicator(
          activeIndex: _current,
          count: widget.items.length,
          effect: WormEffect(
            dotWidth: 8.0,
            dotHeight: 8.0,
            activeDotColor: appDefaultYallow,
            dotColor: Colors.yellow.withOpacity(.3),
          ),
          onDotClicked: (index) {
            _controller.animateToPage(index);
          },
        ),
      ],
    );
  }
}
