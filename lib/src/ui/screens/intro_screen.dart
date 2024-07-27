// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:e_commerce_1/src/common/utils/intro_screen/page_slide_data.dart';
import 'package:e_commerce_1/src/common/widgets/app_button.dart';
import 'package:e_commerce_1/src/ui/components/intro_screen/page_slider.dart';
import 'package:e_commerce_1/src/ui/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    PageController pageController = PageController();
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.8
                        : 600,
                child: PageView(
                    controller: pageController,
                    children: List.generate(
                      IntroScreenData.textData.length,
                      (index) => intro_section_page_slider(
                        context,
                        index,
                      ),
                    )),
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: IntroScreenData.textData.length,
                effect: const WormEffect(
                  dotColor: Colors.grey,
                  activeDotColor: AppColors.primary,
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              appButton(
                  context,
                  "Get Started",
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen())),
                  Icons.arrow_forward,
                  false,
                  null),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
