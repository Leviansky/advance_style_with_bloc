// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mini_app_cubit/app/modules/home/presentation/screen/bar_item_view.dart';
import 'package:mini_app_cubit/app/modules/home/presentation/screen/home_view.dart';
import 'package:mini_app_cubit/app/modules/home/presentation/screen/my_view.dart';
import 'package:mini_app_cubit/app/modules/home/presentation/screen/search_view.dart';

class MainHomeView extends StatefulWidget {
  const MainHomeView({Key? key}) : super(key: key);

  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  List pages = [
    const HomePageView(),
    const BarItemPageView(),
    const SearchPageView(),
    const MyPageView(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.4),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: "My",
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
