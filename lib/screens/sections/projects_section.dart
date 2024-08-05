import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/experiences/projects_slider.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ResponsiveWidget(
          desktop: Text(
            'Things I have designed for digital\n media agencies',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: HexColor('#ffffff'), fontSize: 38.0, height: 1.0),
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
        Container(
          // color: Colors.red,
          child: CarouselWithIndicator(items: projects),
        ),
      ],
    );
  }
}
