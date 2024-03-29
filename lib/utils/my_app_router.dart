import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/screens/dashboard_screen.dart';
import 'package:login/screens/error_screen.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/screens/profile_screen.dart';
import 'package:login/screens/registration_screen.dart';
import 'package:login/screens/splash_screen.dart';
import 'my_app_route_constant.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      initialLocation: '/',
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          name: MyAppRouteConstants.splashScreenRouter,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage(
            child: SplashScreen(),
          ),
        ),
        GoRoute(
          path: '/dashboard',
          name: MyAppRouteConstants.dashBoardRouter,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage(
            child: DashBoardScreen(),
          ),
        ),
        GoRoute(
          path: '/login',
          name: MyAppRouteConstants.loginRouter,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage(
            child: LoginScreen(),
          ),
        ),
        GoRoute(
          path: '/registration',
          name: MyAppRouteConstants.registrationRouter,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage(
            child: RegistrationScreen(),
          ),
        ),
        GoRoute(
          path: '/profile/:userId',
          name: MyAppRouteConstants.profileRouter,
          builder: (BuildContext context, GoRouterState state) =>
              ProfileScreen(id: state.params['userId']),
        ),
      ],
      errorPageBuilder: (context, state) => const MaterialPage(
        child: ErrorScreen(),
      ),
    );
    return router;
  }
}



  /*
   /*
            GoRouter.of(context).push(Uri(path: '/about').toString());
            GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.profileRouteName, params: {
                'username': 'Text user',
                'userid': 'uhfhfhfdghfk'
              });
            GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.contactUsRouteName); */
                  
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
          /*
        GoRoute(
          path: '/registration',
          name: MyAppRouteConstants.registrationRouter,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const RegistrationScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // Change the opacity of the screen using a Curve based on the the animation's
                // value  
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutCirc)
                      .animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        */