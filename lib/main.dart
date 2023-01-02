import 'package:flutter/material.dart';
import 'package:mini_app_cubit/app/modules/home/presentation/screen/home_view.dart';
import 'package:mini_app_cubit/app/modules/home/presentation/screen/main_home_view.dart';
import 'package:mini_app_cubit/app/modules/welcome/presentation/screen/welcome_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mini Apps',
      debugShowCheckedModeBanner: false,
      home: MainHomeView(),
    );
  }
}
