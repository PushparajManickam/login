import 'package:flutter/material.dart';
import 'package:login/utils/my_textstyle.dart';
import 'package:login/widget/my_widget.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.network(
            "https://assets8.lottiefiles.com/packages/lf20_d6bmcxah.json",
            height: 300,
            repeat: true,
            reverse: true,
            fit: BoxFit.contain,
          ),
          const HeightSizedBox(),
          Text(
            "Welcome",
            style: MyTextStyle.titleTextStyle,
          )
        ],
      ),
    );
  }
}
