import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:e_commerce_1/src/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primary,
        hintColor: AppColors.accent,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: const AppBarTheme(
          color: AppColors.primary,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primary,
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme: const ColorScheme(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          surface: AppColors.surface,
          error: AppColors.error,
          onPrimary: AppColors.surface,
          onSecondary: AppColors.surface,
          onSurface: AppColors.text,
          onError: AppColors.surface,
          brightness: Brightness.light,
        )
            .copyWith(surface: AppColors.background)
            .copyWith(error: AppColors.error),
      ),
      home: const Splashscreen(),
    );
  }
}
