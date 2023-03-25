import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/utils/globals.dart' as globals;
import 'package:login/utils/my_colors.dart';
import 'firebase_options.dart';
import 'utils/my_app_router.dart';

bool shouldUseFirestoreEmulator = false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (shouldUseFirestoreEmulator) {
    FirebaseFirestore.instance.useFirestoreEmulator(
      'localhost',
      8080,
    );
  }
  runApp(
    const MyApp(),
  );
}

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
      routerConfig: MyAppRouter.returnRouter(false),
      // routeInformationParser:
      //     MyAppRouter.returnRouter(false).routeInformationParser,
      // routerDelegate: MyAppRouter.returnRouter(false).routerDelegate,
    );
  }
}
