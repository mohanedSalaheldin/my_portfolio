import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            buildAppBar(context),
          ];
        },
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: appDefaultPadding * 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        // color: Colors.red,
                        // width: double.infinity,
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to My Portfolio website!',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Hey folks, I\'m ',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'Mohaned!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: HexColor('#ffc107'),
                                      ),
                                ),
                              ],
                            ),
                            Text(
                              'Building a successful product is a challenge. I am highly energetic in user \nexperience design, interfaces and web development.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: HexColor('#919191'),
                                  ),
                            ),
                            Row(
                              children: [
                                DefualtAppButton(
                                  backgroundColor: HexColor('#474559'),
                                  content: Row(
                                    children: [
                                      Text(
                                        'Download Resume',
                                        style: TextStyle(
                                          color: HexColor('#eeeeee'),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                          width: appDefaultPadding / 4),
                                      Icon(
                                        Icons.download_outlined,
                                        color: HexColor('#eeeeee'),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: appDefaultPadding / 2),
                                DefualtAppButton(
                                  backgroundColor: HexColor('#eeeeee'),
                                  content: Row(
                                    children: [
                                      Text(
                                        'Let\'s Talk',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('#474559'),
                                        ),
                                      ),
                                      const SizedBox(
                                          width: appDefaultPadding / 4),
                                      Icon(
                                        Icons.telegram_outlined,
                                        color: HexColor('#474559'),
                                      ),
                                    ],
                                  ),
                                ),
                                // const DefualtAppButton(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: appDefaultPadding),
                    Expanded(
                      child: SizedBox(
                        // color: Colors.yellow,
                        // width: double.infinity,
                        height: 300,
                        child: SvgPicture.asset(
                          fit: BoxFit.cover,
                          'assets/images/image.svg',
                          semanticsLabel: 'Acme Logo',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SliverAppBar buildAppBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      titleSpacing: appDefaultPadding * 4,
      // leading: ,
      actions: [
        Row(
          children: [
            Text(
              'About',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: appDefaultPadding * 2),
            Text(
              'Projects',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: appDefaultPadding * 2),
            Text(
              'Resume',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: appDefaultPadding * 2),
            Text(
              'Contact',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: appDefaultPadding * 4),
          ],
        ),
        // Spacer(),
      ],
      title: const Row(
        children: [
          Icon(Icons.computer_rounded),
          SizedBox(width: appDefaultPadding / 2),
          Text('Mahaned'),
        ],
      ),
      // centerTitle: true,
    );
  }
}

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
