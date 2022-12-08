import 'package:flutter/material.dart';
import 'package:portfolio/utils/helpers.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: MyTitle(),
          ),
          ListTile(
            title: const Text('CV'),
            onTap: () {
              Navigator.pop(context);
            },
            // onTap: () async {
            //   final result = await Navigator.of(context)
            //       .pushReplacementNamed(CurriculumVitae.name);
            //   if (result != null) {
            //     debugPrint('Yo');
            //   } else {
            //     debugPrint('YoYo');
            //   }
            // },
          ),
        ],
      ),
    );
  }
}
