import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: StackedAppBar(),
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[700],
        title: Text('Normal AppBar'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => debugPrint('Menu Icon Tapped'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.ac_unit),
          )
        ],
      ),
    );
  }
}
