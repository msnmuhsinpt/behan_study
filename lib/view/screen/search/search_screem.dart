import 'package:behan_study/view/widget/app_text_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appTextView(name: 'Search Page', isBold: true),
      ),
    );
  }
}
