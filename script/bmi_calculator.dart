// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kegiatan1/main.dart';

// ignore: must_be_immutable
class ResultPage extends StatefulWidget {
  String result;
  String msg;
  String desc;
  ResultPage(this.result, this.msg, this.desc);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI RESULT",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "Your BMI",
              style: TextStyle(
                  fontFamily: 'San Francisco',
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.result,
                ),
                Text(
                  widget.msg,
                ),
                Text(
                  widget.desc,
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            color: lightColor,
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "Recalculate",
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),
          ),
        ],
      ),
    );
  }
}
