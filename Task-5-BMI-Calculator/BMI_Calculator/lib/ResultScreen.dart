// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale ;
  final int age;
  final int result ;
  final int weight;
  final int height;
  final String state ;
  const ResultScreen({
    required this.isMale,
    required this.age,
    required this.result,
    required this.weight,
    required this.height,
    required this.state
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
          centerTitle: true,
        ),
        body:   Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gender : ${isMale ? 'Male' : 'Female'}',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Age       : $age ',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Height  : $height ',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Weight  : $weight ',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Result   : $result ',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'State     : $state ',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
