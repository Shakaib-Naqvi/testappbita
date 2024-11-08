import 'dart:async';
import 'package:testappbita/view/alloance.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Start the timer to shift to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        // MaterialPageRoute(builder: (context) => RoundedRectangleScreen()),
        MaterialPageRoute(builder: (context) => RoundedRectangleScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFC1C1), // Light Red
                  Color(0xFFB2FF59), // Light Green
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Shiny overlay for the glossy effect
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.2), // Slight white overlay
                    Colors.transparent,
                    Colors.white.withOpacity(0.1), // Reflective gloss
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          // Centered splash image
          Center(
            child: Image.asset("assets/images/splash.png", width: 300),
          ),
        ],
      ),
    );
  }
}
