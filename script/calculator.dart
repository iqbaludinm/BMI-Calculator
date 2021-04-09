import 'dart:math';

// import 'package:flutter/material.dart';

class CalculateResult {
  CalculateResult(this.height, this.weight);
  final double height;
  final double weight;
  double result;
  String msg;

  calculateResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  String getMsg() {
    if (result >= 25) {
      msg = "OverWeight";
      return 'You have a higher than normal body weight. Try to exercise more.\n 💪🚵🚴🏊🏇🏃';
    } else if (result >= 18.5) {
      msg = "Normal";
      return 'You have a normal body weight. Good job!\n 🍇🍉🍍🍒🌽';
    } else if (result < 18.5) {
      msg = "UnderWeight";
      return 'You have a lower than normal body weight. You can eat a bit more.\n 🍲🍱🍳🍗🍒🍎';
    }
  }

  String getDesc() {
    if (result >= 25) {
      msg = "OverWeight";
      return 'You have a higher than normal body weight. Try to exercise more.\n 💪🚵🚴🏊🏇🏃';
    } else if (result >= 18.5) {
      msg = "Normal";
      return 'You have a normal body weight. Good job!\n 🍇🍉🍍🍒🌽';
    } else if (result < 18.5) {
      msg = "UnderWeight";
      return 'You have a lower than normal body weight. You can eat a bit more.\n 🍲🍱🍳🍗🍒🍎';
    }
  }
}
