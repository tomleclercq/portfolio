import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/pages/curriculum_vitae.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/base_page.dart';

import '../pages/contact.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static void toggleDrawer() async {
    if (scaffoldStateKey.currentState!.isDrawerOpen) {
      scaffoldStateKey.currentState!.openEndDrawer();
    } else {
      scaffoldStateKey.currentState!.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const FaIcon(Icons.home_outlined),
            title: Container(
              padding: const EdgeInsets.only(
                left: 16,
                top: 12,
                bottom: 12,
              ),
              child: myTitle(),
            ),
          ),
          ListTile(
            leading: const FaIcon(Icons.star_outline_outlined),
            title: const Text('CV'),
            onTap: () async {
              toggleDrawer();
              await CurriculumVitae.routeTo();
            },
          ),
          ListTile(
            leading: const FaIcon(Icons.contact_mail_outlined),
            title: const Text('Contact'),
            onTap: () async {
              toggleDrawer();
              await Contact.routeTo();
            },
          ),
        ],
      ),
    );
  }
}
