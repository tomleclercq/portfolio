import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/pages/curriculum_vitae.dart';
import 'package:portfolio/widgets/base_page.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';
import 'pages/home.dart';
import 'theme/color_schemes.g.dart';

final navigatorKey = GlobalKey<NavigatorState>();

// ...

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web);
  await FirebaseAppCheck.instance.activate(
      webProvider:
          ReCaptchaV3Provider('6LcRu34lAAAAALCkxGeVSzBCuDbNG_MMTia9Pkiz'));
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
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
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
