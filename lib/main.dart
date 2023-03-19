// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/dashboard_screen.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/utils/globals.dart' as globals;
import 'package:login/utils/my_colors.dart';
import 'package:go_router/go_router.dart';
import 'firebase_options.dart';
import 'screens/registration_screen.dart';
import 'screens/splash_screen.dart';

bool shouldUseFirestoreEmulator = false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (shouldUseFirestoreEmulator) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) {
            return const DashBoardScreen();
          },
        ),
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        ),
        GoRoute(
          path: 'registration',
          builder: (BuildContext context, GoRouterState state) {
            return const RegistrationScreen();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MyColor.appColor,
        ),
      ),
      themeMode: globals.lightMode ? ThemeMode.light : ThemeMode.dark,
      //MyTheme.lightTheme : MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      routerConfig: _router,
    );
  }
}
