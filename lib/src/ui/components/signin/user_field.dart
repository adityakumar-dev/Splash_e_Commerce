import 'package:e_commerce_1/src/common/widgets/signup_login/user_text_field.dart';
import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';

class UserFieldSignIn extends StatelessWidget {
  const UserFieldSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const UserTextField(
            heading: "Enter Email",
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
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            child: const Text(
              "Forgot password ?",
              style: TextStyle(
                  color: AppColors.primary, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
