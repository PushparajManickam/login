import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/utils/my_colors.dart';
import 'package:login/utils/my_global_declaration.dart';
import 'package:login/utils/my_global_variable.dart';
import 'package:login/utils/my_textstyle.dart';
import 'package:login/utils/globals.dart' as globals;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userIDController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size _myDeviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        primary: false,
        backgroundColor: MyColor.backGroundColor,
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Switch(
                    value: globals.lightMode,
                    onChanged: (value) {
                      globals.lightMode = !globals.lightMode;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(
                  20,
                ),
                child: SvgPicture.asset(
                  "${MyGlobalVariable.svgPath}LoginSVG_1.svg",
                  height: 158.35,
                ),
              ),
              Card(
                elevation: globals.cardElevation,
                margin: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: TextFormField(
                        controller: _userIDController,
                        decoration: InputDecoration(
                          hintText: "User id",
                          hintStyle: MyTextField.textFieldTextStyle,
                          border: MyGlobalDeclaration.textfieldBorder,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter user id';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: MyTextField.textFieldTextStyle,
                          border: MyGlobalDeclaration.textfieldBorder,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
