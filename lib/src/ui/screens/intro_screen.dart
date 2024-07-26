import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(context),
    );
  }

  Widget _buildUi(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: const BoxDecoration(color: AppColors.surface),
        ),
      ],
    ));
  }
}
