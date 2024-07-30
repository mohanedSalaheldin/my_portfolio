import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/projects_slider.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWidget(
          desktop: Text(
            'Things I have designed for digital\n media agencies',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: HexColor('#ffffff'),
                  fontSize: 38.0,
                ),
          ),
          tablet: Text(
            'Things I have designed for digital media agencies',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: HexColor('#ffffff'),
                  fontSize: 34.0,
                ),
          ),
          mobile: Text(
            'Things I have designed for digital media agencies',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: HexColor('#ffffff'),
                  fontSize: 22.0,
                ),
          ),
        ),
        CarouselWithIndicator(
          items: projects,
        ),
        // CarouselSlider(
        //   items: projects,

        //   options: CarouselOptions(
        //     height: Responsive.isTablet(context) ? null : 600,
        //     viewportFraction: 2,
        //     initialPage: 0,
        //     enableInfiniteScroll: true,
        //     reverse: false,
        //     autoPlay: true,
        //     autoPlayInterval: const Duration(seconds: 3),
        //     autoPlayAnimationDuration: const Duration(milliseconds: 800),
        //     autoPlayCurve: Curves.fastOutSlowIn,
        //     enlargeCenterPage: true,
        //     scrollDirection: Axis.horizontal,
        //   ),
        // ),
      ],
    );
  }
}
