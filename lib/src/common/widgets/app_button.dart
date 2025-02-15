import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget appButton(BuildContext context, String text, Function() onPress,
    IconData icon, bool changeWidth, dynamic size) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
      width: changeWidth ? MediaQuery.of(context).size.width : size,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: AppColors.primary, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: AppColors.surface,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            icon,
            color: AppColors.surface,
          )
        ],
      ),
    ),
  );
}
