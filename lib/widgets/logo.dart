// widgets/logo.dart
import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/carrot.png', width: 65, height: 65),
    );
  }
}
