import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:e_commerce_1/src/ui/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const IntroScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _buildUi(context),
    );
  }

  Widget _buildUi(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Splash",
                    style: TextStyle(
                        color: AppColors.surface,
                        fontSize: 44,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Any shopping just from home",
                    style: TextStyle(color: AppColors.surface),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: LinearProgressIndicator(
              minHeight: 2,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: const Text(
              "v0.0.1",
              style: TextStyle(color: AppColors.surface),
            ),
          ),
        ],
      ),
    );
  }
}
