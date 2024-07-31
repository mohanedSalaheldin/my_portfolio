import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/experience_item.dart';

class ExperienceAndEducationSection extends StatelessWidget {
  const ExperienceAndEducationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isTablet(context)
        ? const Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(title: 'Experiences'),
                  SizedBox(height: appDefaultPadding),
                  ExperienceItem(
                    year: '2023',
                    title: 'Flutter Developer',
                    company: 'Etooplay',
                    describtion:
                        'Designed 15+ screens and worked on Auth & App Store modules, integrating 10+ APIs and participating in 10+ planning meetings.',
                  ),
                  ExperienceItem(
                    year: '2024',
                    title: 'Flutter Developer',
                    company: 'Freelance',
                    describtion:
                        'Developed custom applications for clients and collaborated with colleagues on tasks to build Flutter apps.',
                  ),
                ],
              ),
              SizedBox(height: appDefaultPadding * 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(title: 'Educations'),
                  SizedBox(height: appDefaultPadding),
                  ExperienceItem(
                    year: '2020',
                    title: 'B.Sc. Computer Science',
                    company: 'SUST',
                    describtion:
                        'Currently studying Software Engineering and expected to graduate by the end of 2025.',
                  ),
                  ExperienceItem(
                    year: '2023',
                    title: 'B.Sc. Computer Science',
                    company: 'UoPeople',
                    describtion:
                        'Currently studying CS online at the University of the People, with an expected graduation by the end of 2027.',
                  ),
                ],
              ),
            ],
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(title: 'Experiences'),
                  SizedBox(height: appDefaultPadding),
                  ExperienceItem(
                    year: '2023',
                    title: 'Flutter Developer',
                    company: 'Etooplay',
                    describtion:
                        'Designed 15+ screens and worked on Auth & App Store modules, integrating 10+ APIs and participating in 10+ planning meetings.',
                  ),
                  ExperienceItem(
                    year: '2024',
                    title: 'Flutter Developer',
                    company: 'Freelance',
                    describtion:
                        'Developed custom applications for clients and collaborated with colleagues on tasks to build Flutter apps.',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(title: 'Educations'),
                  SizedBox(height: appDefaultPadding),
                  ExperienceItem(
                    year: '2020',
                    title: 'B.Sc. Computer Science',
                    company: 'SUST',
                    describtion:
                        'Currently studying Software Engineering and expected to graduate by the end of 2025.',
                  ),
                  ExperienceItem(
                    year: '2023',
                    title: 'B.Sc. Computer Science',
                    company: 'UoPeople',
                    describtion:
                        'Currently studying CS online at the University of the People, with an expected graduation by the end of 2027.',
                  ),
                ],
              ),
            ],
          );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Text(
        title,
        style: const TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      tablet: Text(
        title,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      mobile: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
