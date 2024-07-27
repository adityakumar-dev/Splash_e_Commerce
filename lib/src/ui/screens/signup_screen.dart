import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:e_commerce_1/src/common/widgets/app_button.dart';
import 'package:e_commerce_1/src/common/widgets/signup_login/user_text_field.dart';
import 'package:e_commerce_1/src/ui/components/signup_signin/heading.dart';
import 'package:e_commerce_1/src/ui/components/signup_signin/heading_desc.dart';
import 'package:e_commerce_1/src/ui/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(context),
    );
  }

  Widget _buildUi(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Create Account",
                  style: headingStyle(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninScreen()));
                  },
                  child: const Text(
                    "already Account ? ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryText),
                  ),
                )
              ],
            ),
            Text(
              "Start Splash with create your account",
              style: headingDescStyle(),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/signupScreen/signup-svg.svg',
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.4
                        : MediaQuery.of(context).size.height * 0.6,
              ),
            ),
            const UserTextField(
                heading: "username",
                obsecure: false,
                suffixIcon: Icons.person_outline,
                isPasword: false,
                label: "User Name",
                hint: "Create Your UserName"),
            const UserTextField(
                heading: "Email",
                obsecure: false,
                suffixIcon: Icons.email_outlined,
                isPasword: false,
                label: "Email",
                hint: "Enter Your email"),
            const UserTextField(
                heading: "Password",
                obsecure: true,
                suffixIcon: Icons.password_outlined,
                isPasword: true,
                label: "Password",
                hint: "Create Your password"),
            const UserTextField(
                heading: "Confirm Password",
                obsecure: true,
                suffixIcon: Icons.password_outlined,
                isPasword: true,
                label: "Confirm Password",
                hint: "Confirm Your password"),
            const SizedBox(
              height: 20,
            ),
            appButton(context, "Sign up", () {}, Icons.login, false, null),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SigninScreen()));
              },
              child: const Text(
                "already have an Account ? Sign in",
                style: TextStyle(
                    color: AppColors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
