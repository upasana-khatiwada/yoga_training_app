import 'package:flutter/material.dart';
import 'package:yoga_training_app/screens/background_image.dart';
import 'package:yoga_training_app/screens/login_credentials.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackgroundImage(),
            LoginCredentials(),
           
          ],
        ),
      ),
    );
  }
}