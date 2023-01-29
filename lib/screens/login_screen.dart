import 'package:flutter/material.dart';
import 'package:login/utils/my_global_declaration.dart';
import 'package:login/utils/my_textstyle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userIDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "LOGIN",
              style: MyTextField.titleTextStyle,
            ),
            TextFormField(
              controller: _userIDController,
              decoration:
                  InputDecoration(border: MyGlobalDeclaration.textfieldBorder),
            )
          ],
        ),
      ),
    );
  }
}
