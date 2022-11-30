import 'package:behan_study/view/screen/main/widget/bottom_navigation.dart';
import 'package:behan_study/view/screen/profile/profile_screen.dart';
import 'package:behan_study/view/screen/saved/saved_screen.dart';
import 'package:behan_study/view/screen/screming/screaming_screen.dart';
import 'package:behan_study/view/screen/search/search_screem.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final _pages = const [
    HomeScreen(),
    SearchScreen(),
    ScreamingScreen(),
    SavedScreen(),
    ProfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
