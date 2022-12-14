import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/pages/curriculum_vitae.dart';
import 'package:portfolio/widgets/base_page.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';
import 'pages/home.dart';

final navigatorKey = GlobalKey<NavigatorState>();

// ...

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'RybxcFsw3tjWVZ\$\$p74DDxJNkhRhxWX^',
    androidProvider: AndroidProvider.debug,
  );
  runApp(const Portefolio());
}

class Portefolio extends StatelessWidget {
  const Portefolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Tom Leclercq',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          backgroundColor: const Color(0xFFE2E2E2),
        ),
        builder: (context, child) => BasePage(context, child),
        routes: {
          Home.name: (context) => const Home(),
          CurriculumVitae.name: (context) => const CurriculumVitae(),
          Contact.name: (context) => const Contact(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
