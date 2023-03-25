import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/screens/dashboard_screen.dart';
import 'package:login/screens/error_screen.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/screens/registration_screen.dart';
import 'package:login/screens/splash_screen.dart';

import 'my_app_route_constant.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      // initialLocation: '/splashscreen',
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          name: MyAppRouteConstants.splashScreenRouter,
          pageBuilder: (context, state) => const MaterialPage(
            child: SplashScreen(),
          ),
        ),
         GoRoute(
          path: '/dashboard',
          name: MyAppRouteConstants.dashBoardRouter,
          builder: (BuildContext context, GoRouterState state) =>
             const DashBoardScreen(),
          
        ),
      
          GoRoute(
          path: '/login',
          name: MyAppRouteConstants.loginRouter,
          builder: (BuildContext context, GoRouterState state)=>
             const LoginScreen()
          
        ),
        GoRoute(
          path: '/registration',
          name: MyAppRouteConstants.registrationRouter,
          builder: (BuildContext context, GoRouterState state) =>
             const RegistrationScreen(),
          
        ),
      ],
      errorPageBuilder: (context, state) =>
         const MaterialPage(child: ErrorScreen())
      
    );
    return router;
  }
}



  /*
        GoRoute(
          name: MyAppRouteConstants.profileRouteName,
          path: '/profile/:username/:userid',
          pageBuilder: (context, state) {
            return MaterialPage(
                child: Profile(
              userid: state.params['userid']!,
              username: state.params['username']!,
            ));
          },
        ),
        */