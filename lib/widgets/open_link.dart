import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenLink extends StatefulWidget {
  const OpenLink(
    this.type, {
    required this.url,
    this.icon,
    this.title,
    super.key,
  });
  final LinkType type;
  final String url;
  final String? title;
  final IconData? icon;

  @override
  State<OpenLink> createState() => _OpenLinkState();
}

class _OpenLinkState extends State<OpenLink> {
  bool visited = false;

  void openLink(Uri link) async {
    bool success = false;
    try {
      if (await canLaunchUrl(link)) {
        success = await launchUrl(link);
      } else {
        throw 'Could not launch $link';
      }
    } catch (e) {
      rethrow;
    }
    debugPrint('Link was ${success ? 'good' : 'bad'}');
  }

  @override
  Widget build(BuildContext context) {
    final link = Uri.parse(widget.url);
    switch (widget.type) {
      case LinkType.text:
        return InkWell(
          child: Text(
            widget.title ?? widget.url,
            style: TextStyle(
              color: !visited ? Colors.blue : Colors.purple,
              decoration: TextDecoration.underline,
            ),
          ),
          onTap: () {
            debugPrint(link.toString());
            openLink(link);
            setState(() => visited = true);
          },
        );
      case LinkType.button:
        return IconButton(
          icon: FaIcon(widget.icon),
          onPressed: () => openLink(link),
        );
    }
  }
}
