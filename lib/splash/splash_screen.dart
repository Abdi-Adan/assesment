import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepOrange,
                  Colors.orange,
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            bottom: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(), // Image
                const SizedBox(height: 30),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  color: Colors.deepOrange,
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                const Text('Sign in with Google'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text('Continue as a guest user?'),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {},
                      child: const Text('Click Here'),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                const Text(
                  'Copyright 2022 Spraxa Solutions Pvt Ltd. \n All rights reserved',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
