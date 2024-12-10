import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        Navigator.of(context).pushReplacementNamed("/home");
      },
    );
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              width: 350,
              child: Image(
                image:AssetImage('asset/image/img.png'),
                //image: AssetImage('asset/image/logo.png'),
              ),
            ),
            // Text(
            //   'Bhagavad Geeta',
            //   style: TextStyle(
            //     fontSize: 35,
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 1,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
