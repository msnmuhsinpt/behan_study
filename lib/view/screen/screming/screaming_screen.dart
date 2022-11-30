import 'package:flutter/material.dart';

import '../../widget/app_text_view.dart';

class ScreamingScreen extends StatelessWidget {
  const ScreamingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appTextView(name: 'Screaming Page', isBold: true),
      ),
    );
  }
}
