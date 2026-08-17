// screens/1-home.dart

import 'package:flutter/material.dart';
import '2-Register.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // ================= BACKGROUND IMAGE =================
          Image.asset('assets/images/image.png', fit: BoxFit.cover),

          // ================= DARK OVERLAY =================
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.15),
                  Colors.black.withOpacity(0.65),
                ],
              ),
            ),
          ),

          // ================= CONTENT =================
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Logo
                const Icon(Icons.eco, color: Colors.white, size: 30),

                const SizedBox(height: 8),

                // Welcome
                const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                // to our store
                const Text(
                  'to our store',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 10),

                // Description
                const Text(
                  'Grow your groceries with us at home',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),

                const SizedBox(height: 25),

                // ================= GET STARTED =================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff53B175),
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
