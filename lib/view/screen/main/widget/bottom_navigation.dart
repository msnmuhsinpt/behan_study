import 'package:behan_study/util/app_color.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) => indexChangeNotifier.value = index,
            backgroundColor: AppColor.kWhite,
            selectedIconTheme: const IconThemeData(color: AppColor.kBlue),
            unselectedIconTheme: const IconThemeData(color: AppColor.kBalck),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ]);
      },
    );
  }
}
