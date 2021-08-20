import 'package:flutter/material.dart';
import 'package:my_app/config.dart';
import 'package:my_app/drawer.dart';
import 'package:my_app/main_page.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: _drawerController,
        style: DrawerStyle.Style1,
        mainScreen: HomePage(_drawerController),
        menuScreen: DrawerScreen(),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        slideWidth: MediaQuery.of(context).size.width * .65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.easeInExpo,
      ),
    );
  }
}
