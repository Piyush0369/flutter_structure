import 'package:flutter/material.dart';
import 'package:flutter_structure/helpers/responsiveness.dart';
import 'package:flutter_structure/widgets/large_screen.dart';
import 'package:flutter_structure/widgets/small_screen.dart';
import 'package:flutter_structure/widgets/topnav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: Container(),
        ));
  }
}
