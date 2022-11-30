import 'package:flutter/material.dart';

import '../../widget/app_text_view.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appTextView(name: 'Saved Page', isBold: true),
      ),
    );
  }
}
