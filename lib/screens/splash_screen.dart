import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/utils/my_lottie_url.dart';
import 'package:login/widget/my_widget.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  void initState(context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Spacer(),
            Lottie.network(
              MyLottie.splashScreenLottie,
              height: 300,
              repeat: true,
              reverse: true,
              fit: BoxFit.contain,
            ),
            const HeightSizedBox(),
            const Text(
              "Splash screen",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
