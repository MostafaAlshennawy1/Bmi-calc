import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  double bmi;
  ResultScreen({required this.bmi});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff151928) ,
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
            "Result",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffe73c66),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff323143),
          ),
          height: 500,
          width: double.infinity,
          child: Center(

          child: Text(
            widget.bmi.toStringAsFixed(2),
            style: TextStyle(
              color: Colors.white,
              fontSize: 100,
              fontWeight: FontWeight.bold,
          ),
            ),
          ),
        ),
      ),
    );
  }
}
