import 'package:flutter/material.dart';
import 'package:yoga_training_app/constants/constants.dart';

class LoginCredentials extends StatelessWidget {
  const LoginCredentials({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Please Log In",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Material(
            elevation: 10.0,
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  fillColor: white,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: appPadding * 0.75,
                    horizontal: appPadding,
                  ),
                  hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    size: 25.0,
                    color: black.withOpacity(0.4),
                  )),
            ),
          ),
          SizedBox(
            height: size.height*0.04,
          ),
          Material(
            elevation: 10.0,
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  fillColor: white,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: appPadding * 0.75,
                    horizontal: appPadding,
                  ),
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    size: 25.0,
                    color: black.withOpacity(0.4),
                  )),
            ),
          ), 
        ],
      ),
    );
  }
}
