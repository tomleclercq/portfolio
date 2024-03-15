import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/pages/curriculum_vitae.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/open_link.dart';
import 'package:rive/rive.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static String name = '/';

  static void routeTo() {
    navigatorKey.currentState?.popUntil((r) => r.isFirst);
    navigatorKey.currentState?.pushReplacementNamed(Home.name);
  }

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ResponsiveDisplay display;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      display = ResponsiveDisplay(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Flexible(
          child: RiveAnimation.asset(
            'assets/tl_logo.riv',
            fit: BoxFit.contain,
          ),
        ),
        if (display.breakpoint != Breakpoint.small) ...[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: const Text('Curriculum vitae'),
                  onTap: () => CurriculumVitae.routeTo(),
                ),
                const Text('-'),
                InkWell(
                  child: const Text('Contact'),
                  onTap: () => Contact.routeTo(),
                ),
              ],
            ),
          ),
        ],
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 32),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              OpenLink(
                LinkType.button,
                icon: FontAwesomeIcons.xTwitter,
                url: 'https://twitter.com/TomLeclercq',
              ),
              OpenLink(
                LinkType.button,
                icon: FontAwesomeIcons.linkedin,
                url: 'https://www.linkedin.com/in/tomleclercq',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
