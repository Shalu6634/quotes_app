import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/q');
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 190,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/img/draw.jpg'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Center(
              child: Text(
                'Quotes',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
