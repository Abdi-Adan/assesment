import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spraxa_tech_assesment/routes/routes.dart';
import 'package:spraxa_tech_assesment/utils/global_utils.dart';

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
                  Color(0xff9c3818),
                  Color(0xfff9cf93),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 120,
                  child: Image(image: AssetImage('assets/kundl_2.png')),
                ), // Image
                const SizedBox(height: 40),
                InkWell(
                  onTap: () async {
                    await Navigator.pushReplacementNamed(context, homepageRoute,
                        arguments: SigninMethod.google);
                  },
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Card(
                      elevation: 5,
                      color: const Color(0xffdd4c39),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Color(0xffdd4c39),
                        child: FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Sign in with Google'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Continue as a guest user?'),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () async {
                        await Navigator.pushReplacementNamed(
                            context, homepageRoute,
                            arguments: SigninMethod.anonymous);
                      },
                      child: const Text(
                        'Click Here',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
          const Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Text(
              'Copyright 2022 Spraxa Solutions Pvt Ltd. \n All rights reserved',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
