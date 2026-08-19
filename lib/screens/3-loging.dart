// screens/3-loging.dart

import '4-BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app1/widgets/login_Logo.dart';
import '../widgets/email_field.dart';
import '../widgets/login_header.dart';
import '../widgets/password_field.dart';
import '../widgets/forgot_password.dart';
import '../widgets/login_button.dart';
import '../widgets/signup_row.dart';

class LogingScrreen extends StatefulWidget {
  const LogingScrreen({super.key});

  @override
  State<LogingScrreen> createState() => _LogingScrreenState();
}

class _LogingScrreenState extends State<LogingScrreen> {
  bool isPasswordHidden = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFF7F5), Colors.white, Color(0xFFF9F7FF)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 55),

                  const LoginLogo(),

                  const SizedBox(height: 80),

                  const LoginHeader(),

                  const SizedBox(height: 35),

                  EmailField(
                    controller: emailController,
                    onChanged: (String value) {},
                  ),

                  const SizedBox(height: 28),

                  PasswordField(
                    controller: passwordController,
                    isPasswordHidden: isPasswordHidden,
                    onToggle: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                  ),

                  const ForgotPassword(),

                  const SizedBox(height: 5),

                  LoginButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const shopScreen(),
                          ),
                        );
                      }
                    },
                  ),

                  const SizedBox(height: 16),

                  const SignupRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
