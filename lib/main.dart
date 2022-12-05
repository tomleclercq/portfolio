import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/open_link.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          backgroundColor: const Color(0xFFE2E2E2) // AppColors.grey,
          ),
      home: const MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return SafeArea(
      child: Scaffold(
        appBar: (display.size == Breakpoint.small)
            ? AppBar(
                title: Text(widget.title),
              )
            : null,
        body: Column(
          children: [
            const Flexible(
              child: RiveAnimation.asset(
                'assets/tl_logo.riv',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Curriculum vitae: '),
                  OpenLink(
                    LinkType.text,
                    title: 'digital',
                    url:
                        "https://drive.google.com/open?id=1RPM63lf2iXHTSRQUI4m2B8RcFclWiulq",
                  ),
                  Text(' - '),
                  OpenLink(
                    LinkType.text,
                    title: 'analog',
                    url:
                        "https://drive.google.com/open?id=1ROXduHpF0hd5FXFRFfPUxLdiZhG75j36",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  OpenLink(
                    LinkType.button,
                    icon: FontAwesomeIcons.twitter,
                    url: 'https://twitter.com/TomLeclercq',
                  ),
                  OpenLink(
                    LinkType.button,
                    icon: FontAwesomeIcons.linkedin,
                    url: 'https://www.linkedin.com/in/tomleclercq',
                  ),
                  Text("Tom Leclercq 2022"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
