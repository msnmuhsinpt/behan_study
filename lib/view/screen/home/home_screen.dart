import 'package:flutter/material.dart';
import '../../widget/app_text_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appTextView(name: 'Home Page', isBold: true),
      ),
    );
  }
}
