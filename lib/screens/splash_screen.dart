import 'package:flutter/material.dart';
import 'package:login/screens/registration_screen.dart';
import 'package:login/utils/my_colors.dart';
import 'package:login/utils/my_lottie_url.dart';
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
      backgroundColor: MyColor.backGroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Lottie.network(
              MyLottie.simplySitting,
              height: 300,
              repeat: true,
              reverse: true,
              fit: BoxFit.contain,
            ),
            const HeightSizedBox(),
            Text(
              "Welcome",
              style: MyTextStyle.titleTextStyle,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 14.0,
                right: 14.0,
                bottom: 25.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColor.purpleColor5.withOpacity(
                    0.4,
                  ),
                  minimumSize: const Size(
                    double.infinity,
                    40,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationScreen(),
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: MyTextStyle.titleTextStyle1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
