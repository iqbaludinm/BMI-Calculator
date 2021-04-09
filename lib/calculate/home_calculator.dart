import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:kegiatan1/main.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int index = 0;
  int currentIndex = 0;
  int height;
  int weight;

  String desc;
  String msg;
  double calculate;
  String calcResult;
  Color color;

  TextEditingController heightController = new TextEditingController();
  TextEditingController weightController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              fontFamily: 'San Francisco',
              fontWeight: FontWeight.bold,
              fontSize: 19,
              letterSpacing: 0.6,
              color: Colors.black87),
        ),
        elevation: 0.0,
        backgroundColor: lightColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          // padding: EdgeInsets.all(12.0),
          padding: EdgeInsets.fromLTRB(20, 40, 20, 12),
          child: Column(
            children: [
              Row(
                children: [
                  radioButton("Man", Colors.blue, 0),
                  radioButton("Woman", Colors.pink, 1),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              // Padding(padding: EdgeInsets.fromLTRB(200, 5, 200, 5)),
              TextField(
                keyboardType: TextInputType.number,
                controller: heightController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Ur height in cm",
                  hintStyle: TextStyle(fontFamily: 'San Francisco'),
                  filled: true,
                  fillColor: lightColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 27.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: weightController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Ur weight in kg",
                  hintStyle: TextStyle(fontFamily: 'San Francisco'),
                  filled: true,
                  fillColor: lightColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: 60.0,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    double height = double.parse(heightController.value.text);
                    double weight = double.parse(weightController.value.text);
                    bmiCalculate(height, weight);
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.bold),
                  ),
                  color: lightColor,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0)),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "Your BMI is :",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'San Francisco',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: color,
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      calcResult != null ? '$calcResult' : '',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    new Text(
                      msg != null ? '$msg' : '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.bold,
                        backgroundColor: color,
                        // color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    new Text(
                      desc != null ? '$desc' : '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void bmiCalculate(double height, double weight) {
    setState(() {
      calculate = weight / pow(height / 100, 2);
      calcResult = calculate.toStringAsFixed(2);

      // result = calcResult;
      if (calculate >= 25) {
        msg = 'OverWeight';
        color = Color(0xffe74c3c);
        desc =
            'You have a higher than normal body weight. Try to exercise more 💪🚵🚴🏊🏇🏃\n';
      } else if (calculate >= 18.5) {
        msg = 'Normal';
        color = Color(0xff2ecc71);
        desc = 'You have a normal body weight. Good job! 🍇🍉🍍🍒🌽\n';
      } else if (calculate < 18.5) {
        msg = 'UnderWeight';
        color = Color(0xffe67e22);
        desc =
            'You have a lower than normal body weight. You can eat a bit more 🍲🍱🍳🍗🍒🍎\n';
      }
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  //custom widget
  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        height: 130,
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        // ignore: deprecated_member_use
        child: RaisedButton(
          // line dibawah menjelaskan bahwa jika index saat ini = tombol yang dipencet maka warna nya jadi negatif
          color: currentIndex == index ? color : lightColor,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          onPressed: () {
            //ketika tombol di klik maka index saat ini akan menggunakan index lawannya
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
                color: currentIndex == index ? Colors.white : color,
                fontSize: 22.0,
                fontFamily: 'San Francisco',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// void navigateToResultScreen(double result) {
//   double height = double.parse(heightController.value.text);
//   double weight = double.parse(weightController.value.text);
//   CalculateResult obj = CalculateResult(height, weight);
//   Navigator.push(
//       context,
//       MaterialPageRoute(
//           builder: (context) => ResultPage(
//               obj.calculateResult(), obj.getMsg(), obj.getDesc())));
// }

// Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => null),
// ),

// String getDesc() {
//   calculate = double.parse(result);
//   if (calculate >= 25) {
//     msg = "OverWeight";
//     return 'You have a higher than normal body weight. Try to exercise more.\n 💪🚵🚴🏊🏇🏃';
//   } else if (calculate >= 18.5) {
//     msg = "Normal";
//     return 'You have a normal body weight. Good job!\n 🍇🍉🍍🍒🌽';
//   } else if (calculate < 18.5) {
//     msg = "UnderWeight";
//     return 'You have a lower than normal body weight. You can eat a bit more.\n 🍲🍱🍳🍗🍒🍎';
//   }
// }
