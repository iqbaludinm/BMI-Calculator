import 'package:flutter/material.dart';
import 'package:kegiatan1/splash.dart';

Color mainColors = Color(0xFFDD4B39);
Color firstColor = Color(0xFF3B5998);
Color secondaryColor = Color(0xFF264994);
Color lightColor = Color(0xFF8B9DC3);

void main() {
  runApp(
    MainPage(),
  );
}

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: Colors.lightBlue[900],
        // primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
