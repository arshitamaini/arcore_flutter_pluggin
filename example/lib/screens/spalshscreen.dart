import 'package:arcore_flutter_plugin_example/screens/itemlistscreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  
  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: ItemListscreen(),
      title: Text(
        'AR Furniture App',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: Colors.pink,
        ),
        ),
        image: Image.asset('items/icon.png'),
        backgroundColor: Colors.white,
        photoSize: 180,
        loaderColor: Colors.red,
        loadingText: Text('Loading... '),
    );
  }
}