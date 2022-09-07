import 'package:flutter/material.dart';

import '../../widgets/custom_paint.dart';
import '../../widgets/custom_paint2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                const SizedBox(height: 100),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "WELCOME TO TAXX",
                    textAlign: TextAlign.center,
                    textScaleFactor: 2.0,
                    style: TextStyle(
                        color: Color(0xff0F398B),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/carservice.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      child: const Text('LOGIN'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff0F398B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 120, vertical: 16),
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      child: const Text('SIGN UP'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0XFF2196F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 115, vertical: 17),
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ]),
            ),
          ),
          Positioned(
            bottom: 810,
            right: 600,
            child: CustomPaint(
              painter: DrawCircles(),
            ),
          ),
          Positioned(
            top: 650,
            right: 430,
            child: CustomPaint(
              painter: DrawCircle(),
            ),
          ),
        ],
      ),
    );
  }
}
