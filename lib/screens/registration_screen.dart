import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login/utils/my_box_model.dart';
import 'package:login/utils/my_global_declaration.dart';
import 'package:login/utils/my_textstyle.dart';
import 'package:login/widget/my_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Stream collectionStream =
      FirebaseFirestore.instance.collection('userdata').snapshots();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "Registration Screen",
                  style: MyTextStyle.titleTextStyle,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14.0,
                  top: 10.0,
                  right: 14.0,
                ),
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: MyTextStyle.textFieldTextStyle,
                    border: MyGlobalDeclaration.textfieldBorder,
                    contentPadding: MyBoxModel.textFieldContentPadding,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14.0,
                  top: 10.0,
                  right: 14.0,
                ),
                child: TextFormField(
                  controller: _userIdController,
                  decoration: InputDecoration(
                    labelText: "User id",
                    labelStyle: MyTextStyle.textFieldTextStyle,
                    border: MyGlobalDeclaration.textfieldBorder,
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
                padding: const EdgeInsets.only(
                  left: 14.0,
                  top: 10.0,
                  right: 14.0,
                ),
                child: TextFormField(
                  controller: _passWordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: MyTextStyle.textFieldTextStyle,
                    border: MyGlobalDeclaration.textfieldBorder,
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
              const HeightSizedBox(),
              ElevatedButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print(_nameController.text.toString());
                    print(_userIdController.text.toString());
                    print(_passWordController.text.toString());
                    addUser(
                      "push",
                      "pushparaj27",
                      "password",
                    );
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios),
                label: const Text(
                  "Register",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addUser(name, username, password) {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'name': name, // John Doe
          'username': username, // Stokes and Sons
          'password': password // 42
        })
        .then(
          (value) => print(
            "User Added",
          ),
        )
        .catchError(
          (error) => print(
            "Failed to add user: $error",
          ),
        );
  }
}
/*
class FetchingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('userdata').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView(
          children: snapshot.data!.docs.map((document) {
            return Container(
              child: Center(child: Text(document['text'])),
            );
          }).toList(),
        );
      },
    );
  }
}
*/