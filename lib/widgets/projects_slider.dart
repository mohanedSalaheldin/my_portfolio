import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: widget.items.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: ResponsiveWidget.isMobile(context) ? 200 : 600,
                  child: item,
                );
              },
            );
          }).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            // height: Responsive.isTablet(context) ? null : 600,
            viewportFraction: 1.0, // Each item takes up the entire width
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false, // Disable the enlarging effect
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
          effect: ScrollingDotsEffect(
            dotWidth: 8.0,
            dotHeight: 8.0,
            activeDotColor: Theme.of(context).primaryColor,
            dotColor: Colors.grey,
          ),
          onDotClicked: (index) {
            _controller.animateToPage(index);
          },
        ),
      ],
    );
  }
}

class Responsive {
  static bool isTablet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > 600 && size.width < 1200;
  }
}
