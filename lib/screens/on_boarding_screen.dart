import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF4FEFF),
        body: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: -200,
              child: Transform.scale(
                scale: 1.2,
                child: Image.asset(
                  height: 587,
                  width: 527,
                  'assets/bg.png',
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              child: Image.asset('assets/travel.png'),
            ),
            Positioned(
                top: 20,
                child: Column(
                  children: const [
                    Text('Let\'s'),
                    Text('Explore'),
                    Text('The World'),
                  ],
                ))
          ],
        ));
  }
}
