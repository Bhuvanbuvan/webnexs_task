import 'package:flutter/material.dart';
import 'package:webnexs_task/features/presentation/pages/screen1.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Screen1(),
    );
  }
}
