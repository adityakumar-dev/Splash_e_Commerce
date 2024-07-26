// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce_1/src/common/utils/intro_screen/page_slide_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/constants/app_colors.dart';

Widget intro_section_page_slider(BuildContext context, int index) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.6
            : 400,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SvgPicture.asset(IntroScreenData.imageData[index]),
      ),
      Text(
        IntroScreenData.textData[index],
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            letterSpacing: .5,
          ),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        textAlign: TextAlign.center,
        IntroScreenData.textDescData[index],
        style: const TextStyle(
            color: AppColors.secondaryText,
            fontSize: 12,
            fontWeight: FontWeight.w300),
      )
    ],
  );
}
