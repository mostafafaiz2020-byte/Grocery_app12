// screens/2-Register.dart

import 'package:flutter/material.dart';
import 'package:grocery_app1/widgets/login_Logo.dart';
import 'package:grocery_app1/widgets/password_field.dart';

import '../widgets/register_header.dart';
import '../widgets/username_field.dart';
import '../widgets/email_field.dart';
import '../widgets/terms_text.dart';
import '../widgets/signup_button.dart';
import '../widgets/login_row.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPasswordHidden = true;

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void togglePassword() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }

  void onEmailChanged(String value) {
    setState(() {});
  }

  void signup() {
    if (formKey.currentState!.validate()) {
      debugPrint('Account Created Successfully');
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
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

                  const SizedBox(height: 55),

                  const RegisterHeader(),

                  const SizedBox(height: 30),

                  UsernameField(controller: usernameController),

                  const SizedBox(height: 25),

                  EmailField(
                    controller: emailController,
                    onChanged: onEmailChanged,
                  ),

                  const SizedBox(height: 25),

                  PasswordField(
                    controller: passwordController,
                    isPasswordHidden: isPasswordHidden,
                    onToggle: togglePassword,
                  ),

                  const SizedBox(height: 10),

                  const TermsText(),

                  const SizedBox(height: 25),

                  SignupButton(onPressed: signup),

                  const SizedBox(height: 16),

                  const LoginRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
