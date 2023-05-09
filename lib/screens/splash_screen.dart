import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/utils/my_app_route_constant.dart';
import 'package:login/utils/my_global_variable.dart';
import 'package:login/utils/my_lottie_url.dart';
import 'package:login/widget/my_widget.dart';
import 'package:login/widget/stateful_wrapper.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  navigationFunc(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacementNamed(
          MyAppRouteConstants.loginRouter,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        navigationFunc(
          context,
        );
      },
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                  vertical: 35.0,
                ),
                child: Lottie.network(
                  MyLottie.splashScreenLottie,
                  height: 300,
                  repeat: true,
                  reverse: true,
                  fit: BoxFit.contain,
                ),
              ),
              const HeightSizedBox(),
              Text(
                "Splash screen",
                textScaleFactor: MyGlobalVariable.textScaleFactory,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
