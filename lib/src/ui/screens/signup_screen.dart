import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(context),
    );
  }

  Widget _buildUi(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [Text("Create Account")],
      ),
    ));
  }
}
