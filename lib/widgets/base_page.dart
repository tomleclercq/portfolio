import 'package:flutter/material.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/CustomDrawer.dart';

class BasePage extends StatelessWidget {
  const BasePage(this.child, {super.key});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final display = ResponsiveDisplay(context);
    return Overlay(
      initialEntries: [
        OverlayEntry(
          builder: (context) => SafeArea(
            child: Scaffold(
              /*   appBar: (display.size == Breakpoint.small)
                  ? AppBar(
                      title: MyTitle(),
                      backgroundColor: Colors.grey[400],
                      elevation: 0.0,
                      systemOverlayStyle: SystemUiOverlayStyle.light,
                    )
                  : null, */
              body: child,
              drawer: const CustomDrawer(),
            ),
          ),
        ),
      ],
    );
  }
}
