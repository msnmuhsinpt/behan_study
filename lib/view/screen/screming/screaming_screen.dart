import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import '../../widget/app_text_view.dart';

class ScreamingScreen extends StatelessWidget {
  const ScreamingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.setCurrentScreen(screenName: 'striming');

    return Scaffold(
      body: Center(
        child: appTextView(name: 'Screaming Page', isBold: true),
      ),
    );
  }
}
