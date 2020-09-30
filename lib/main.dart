import 'package:flutter/material.dart';
import 'appbars/stacked_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StackedAppBar(),
      ),
    );
  }
}
