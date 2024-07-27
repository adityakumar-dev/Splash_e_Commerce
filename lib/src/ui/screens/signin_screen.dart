import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:e_commerce_1/src/common/widgets/app_button.dart';
import 'package:e_commerce_1/src/ui/components/signin/user_field.dart';
import 'package:e_commerce_1/src/ui/components/signup_signin/heading.dart';
import 'package:e_commerce_1/src/ui/components/signup_signin/heading_desc.dart';
import 'package:e_commerce_1/src/ui/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/widgets/signup_login/user_text_field.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Login Account",
                    style: headingStyle(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const Text(
                      "didn't Account ? ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondaryText),
                    ),
                  )
                ],
              ),
              Text(
                "Login with your registred account",
                style: headingDescStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/signInScreen/login-svg.svg',
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.4
                          : MediaQuery.of(context).size.height * 0.6,
                ),
              ),
              const UserFieldSignIn(),
              appButton(
                  context, "Login", () {}, Icons.login_outlined, false, null)
            ],
          )),
    ));
  }
}
