import 'package:flutter/material.dart';
import '../data/global_data.dart';
import 'landing_page.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LandingPage())
      );
    });

    return Stack(
      children: [
        Container(
          color: mainThemeColor
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.skateboarding, 
            color: Colors.white, 
            size: 80
          )
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white.withOpacity(0.4)
            )
          )
        )
      ],
    );
  }
}