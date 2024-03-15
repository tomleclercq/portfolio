import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/contact_form.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});
  static String name = '/contact';

  static Future<void> routeTo() async {
    await Navigator.of(navigatorKey.currentContext!).pushNamed(Contact.name);
  }

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  double get formWidth {
    double width;
    final breakpoint = ResponsiveDisplay(context).breakpoint;
    switch (breakpoint) {
      case Breakpoint.xsmall:
      case Breakpoint.small:
        width = 350;
        break;
      case Breakpoint.medium:
        width = 390;
        break;
      case Breakpoint.large:
        width = 500;
        break;
      case Breakpoint.xlarge:
        width = 600;
        break;
    }
    return width;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: formWidth,
              child: const ContactForm(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32.0),
              child: Divider(
                indent: 32,
                endIndent: 32,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomStyles.getText('Tom <b>Leclercq</b>'),
                  CustomStyles.getText('Place Madelgaire 29'),
                  CustomStyles.getText('7060 Soignies'),
                  const SizedBox(height: 8),
                  CustomStyles.getText('+32(0)477130090'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
