// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class BarItemPageView extends StatelessWidget {
  const BarItemPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            "ini adlaah Bar Item Page",
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
