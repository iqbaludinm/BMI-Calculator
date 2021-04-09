import 'package:flutter/material.dart';
import 'package:kegiatan1/mainPage.dart';

Color bgColor = Color(0xFF264994);

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 4);
    // delay 3 detik untuk menuju ke MainPage()
    Future.delayed(d, () {
      // ke page selanjutnya dan close this page
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MainPage();
          },
        ),
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/bmi.gif"),
            height: 380,
            width: 250,
          ),
        ),
      ),
    );
  }
}

// class Splash extends StatefulWidget {
//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   startTime() async {
//     var _duration = new Duration(seconds: 5);
//     return new Timer(_duration, navigationPage);
//   }

//   void navigationPage() {
//     Navigator.of(context).pushReplacementNamed('/home');
//   }

//   @override
//   void initState() {
//     super.initState();
//     startTime();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Image.asset(
//               'assets/images/scale.gif',
//               scale: 3.0,
//             ),
//           ),
//           SizedBox(
//             height: 30.0,
//           ),
//           Text('Sabar yaa..')
//         ],
//       ),
//     );
//   }
// }

// class Start extends StatefulWidget {
//   @override
//   _StartState createState() => _StartState();
// }

// class _StartState extends State<Start> {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 20,
//       backgroundColor: Colors.yellow,
//       image: Image.asset(
//         'assets/images/bmi.gif',
//       ),
//       loaderColor: Colors.white,
//       photoSize: 150.0,
//       navigateAfterSeconds: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal[600],
//         centerTitle: true,
//         title: Text('Aplikasi BMI'),
//       ),
//       body: Center(
//         child: Text(
//           'BMI',
//           style: TextStyle(
//             fontSize: 30.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Start extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Test Aplikasi BMI',
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue[900],
//       ),
//       home: Splash(),
//       routes: <String, WidgetBuilder>{
//         '/home': (BuildContext context) => MyHomePage(title: 'Body Mass Index'),
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
