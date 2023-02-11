import 'package:flutter/material.dart';
import 'package:login/utils/globals.dart' as globals;
import 'package:login/utils/my_colors.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MyColor.appColor,
        ),
      ),
      themeMode: globals.lightMode ? ThemeMode.light : ThemeMode.dark,
      //MyTheme.lightTheme : MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
