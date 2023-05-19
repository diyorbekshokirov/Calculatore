
import 'package:calculatore/pages/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget{
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CalculatorPage(),
    );
  }

}