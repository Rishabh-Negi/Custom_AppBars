import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StackedAppBar extends StatelessWidget {
  final Color _color = Colors.purple;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    debugPrint('${size.height * 0.2}');

    return Container(
      child: Stack(
        children: [
          Container(
            color: _color,
            height: size.height * 0.2,
            width: size.width,
            child: Center(
                child: Text(
              'Stacked App Bar',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                fontSize: 30.0,
              ),
            )),
          ),
          Container(), //// This [container] is required to give app bar a floating effect else the
          ////  bottom part merges with body
          Positioned(
            top: size.height * 0.2 - 30,
            left: 15,
            right: 15,
            child: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: _color,
                ),
                onPressed: () => debugPrint('Menu Icon Tapped'),
              ),
              primary: false,
              title: TextField(
                cursorColor: _color,
                style: TextStyle(
                  fontSize: 20,
                  color: _color,
                ),
                showCursor: false,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: _color,
                  ),
                  onPressed: () => debugPrint('Search Icon Tapped'),
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: _color,
                  ),
                  onPressed: () => debugPrint('Bell Icon Tapped'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
