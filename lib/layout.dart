import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/helpers/responsiveness.dart';
import 'package:flutter_structure/widgets/large_screen.dart';
import 'package:flutter_structure/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: Container(),
        ));
  }
}
