import 'package:arcore_flutter_plugin_example/screens/spalshscreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //where to go
      debugShowCheckedModeBanner: false,
      home:MySplashScreen(), 
    );
  }
}
