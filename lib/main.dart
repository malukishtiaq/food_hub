import 'package:flutter/material.dart';

import 'features/input_verification_code_page.dart';
import 'features/utils/global.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        body: const InputVerificationCodePage(),
      ),
    );
  }
}
