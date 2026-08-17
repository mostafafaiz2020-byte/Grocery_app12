// widgets/terms_text.dart

import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 12, color: Colors.grey),
        children: [
          TextSpan(text: 'By continuing you agree to our '),
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(color: Color(0xFF53B878)),
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyle(color: Color(0xFF53B878)),
          ),
        ],
      ),
    );
  }
}
