import 'package:flutter/material.dart';
import 'package:login/utils/globals.dart' as globals;
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({
    super.key,
  });

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Switch(
                    value: globals.lightMode,
                    onChanged: (value) {
                      globals.lightMode = !globals.lightMode;
                      setState(
                        () {},
                      );
                    },
                  ),
                ],
              ),
            Center(
              child: Text(
                "Dashboard screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
