import 'package:flutter/material.dart';
import 'package:my_app/home_screen.dart';

void main() {
  runApp(const MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}