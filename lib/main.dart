import 'package:flutter/material.dart';
import 'package:portfolio/pages/curriculum_vitae.dart';
import 'package:portfolio/widgets/base_page.dart';
import 'package:url_strategy/url_strategy.dart';

import 'pages/home.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        title: 'Tom Leclercq',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          backgroundColor: const Color(0xFFE2E2E2), // AppColors.grey,
        ),
        builder: (context, child) => BasePage(child),
        routes: {
          Home.name: (context) => const Home(),
          CurriculumVitae.name: (context) => const CurriculumVitae(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
