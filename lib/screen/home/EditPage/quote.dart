import 'dart:async';

import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/h');
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: height * 0.9,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/flw.webp'),
                ),
              ),
              child: Center(
                  child: Text(
                'Quotes of the day',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),
              )),
            ),
          )
        ],
      ),
    );
  }
}
