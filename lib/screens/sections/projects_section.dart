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
    // var titleDesk = 'Things I have designed for digital\n media agencies';
    var title = "Projects I’ve Crafted in Mobile Development";
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ResponsiveWidget(
          desktop: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: HexColor('#ffffff'), fontSize: 34.0, height: 1.0),
          ),
          tablet: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: HexColor('#ffffff'),
                  fontSize: 31.0,
                ),
          ),
          mobile: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: HexColor('#ffffff'),
                  fontSize: 22.0,
                ),
          ),
        ),
        const SizedBox(height: 16.0),
        CarouselWithIndicator(items: projects),
      ],
    );
  }
}
