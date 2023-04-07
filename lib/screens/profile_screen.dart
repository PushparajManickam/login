import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  String? id;
  ProfileScreen({super.key, this.id});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
          'Profile ${widget.id}',
        ),
      ),
    );
  }
}
