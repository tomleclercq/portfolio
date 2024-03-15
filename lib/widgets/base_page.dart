import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/custom_drawer.dart';

final scaffoldStateKey = GlobalKey<ScaffoldState>();

class BasePage extends StatefulWidget {
  const BasePage(this.appContext, this.child, {super.key});
  final BuildContext? appContext;
  final Widget? child;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    final display = ResponsiveDisplay(context);
    const drawer = CustomDrawer();
    final drawer2 =
        (display.breakpoint == Breakpoint.small) ? const CustomDrawer() : null;
    bool tast = false;
    tast = true;
    tast = false;
    return Overlay(
      initialEntries: [
        OverlayEntry(
          maintainState: true,
          builder: (appContext) => SafeArea(
            child: Scaffold(
              key: scaffoldStateKey,
              body: widget.child,
              drawer: tast ? drawer2 : drawer,
              appBar: AppBar(
                title: myTitle(),
                elevation: 0.0,
                automaticallyImplyLeading: true,
                systemOverlayStyle: SystemUiOverlayStyle.light,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
