import 'package:flutter/material.dart';

import '../../widget/app_text_view.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appTextView(name: 'Profile Page', isBold: true),
      ),
    );
  }
}
