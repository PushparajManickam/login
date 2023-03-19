import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/utils/globals.dart' as globals;
import 'package:login/utils/my_box_model.dart';
import 'package:login/utils/my_colors.dart';
import 'package:login/utils/my_global_declaration.dart';
import 'package:login/utils/my_global_variable.dart';
import 'package:login/utils/my_textstyle.dart';
import 'package:login/widget/swipe_button.dart';

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
    Size myDeviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        primary: false,
        backgroundColor: MyColor.backGroundColor,
        body: SingleChildScrollView(
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
                  "assets/svg/LoginSVG_1.svg",
                  width: myDeviceSize.width * 0.6,
                  height: 158.35,
                ),
              ),
              Card(
                elevation: globals.cardElevation,
                margin: const EdgeInsets.all(14),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 14.0,
                          top: 20.0,
                        ),
                        child: Text(
                          "Welcome Back",
                          textScaleFactor: MyGlobalVariable.textScaleFactory,
                          style: MyTextStyle.titleTextStyle1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          14.0,
                        ),
                        child: TextFormField(
                          controller: _userIDController,
                          decoration: InputDecoration(
                            labelText: "User id",
                            labelStyle: MyTextStyle.textFieldTextStyle,
                            border: MyGlobalDeclarationProperty.textfieldBorder,
                            contentPadding: MyBoxModel.textFieldContentPadding,
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
                          14.0,
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: MyTextStyle.textFieldTextStyle,
                            border: MyGlobalDeclarationProperty.textfieldBorder,
                            contentPadding: MyBoxModel.textFieldContentPadding,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          8,
                        ),
                        child: SwipeButton(
                          key: const Key("SwipeKey"),
                          thumb: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Align(
                                widthFactor: 0.33,
                                child: Icon(
                                  Icons.chevron_right,
                                ),
                              ),
                              Align(
                                widthFactor: 0.33,
                                child: Icon(
                                  Icons.chevron_right,
                                ),
                              ),
                              Align(
                                widthFactor: 0.33,
                                child: Icon(
                                  Icons.chevron_right,
                                ),
                              ),
                            ],
                          ),
                          content: const Center(
                            child: Text('LOGIN',textScaleFactor: MyGlobalVariable.textScaleFactory,),
                          ),
                          onChanged: (result) {
                            if (_formKey.currentState!.validate()) {
                              debugPrint("Validate value!!!");
                            }
                          },
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                ),
              ),
              //Registration screen
              TextButton(
                onPressed: () {},
                child: Text(
                  textScaleFactor: MyGlobalVariable.textScaleFactory,
                  "Register now",
                  style: MyTextStyle.titleTextStyle1,
                ),
              ),
              const Text("Signup with google",textScaleFactor: MyGlobalVariable.textScaleFactory,)
            ],
          ),
        ),
      ),
    );
  }
}
