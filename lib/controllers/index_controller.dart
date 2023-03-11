import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/explore_screen.dart';

class IndexController extends GetxController {
  RxInt index = 0.obs;
  RxInt rightIndex = 0.obs;
  RxInt selectedPageIndex = 0.obs;
  RxInt selectedRightPageIndex = 0.obs;

  List<Widget> pages = const [
    RightPanelPageOne(),
    Center(
      child: Text(
        "PAGE#2",
        style: TextStyle(
          color: Colors.red,
          fontSize: 40,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#3",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 40,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#4",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#5",
        style: TextStyle(
          color: Colors.orange,
          fontSize: 40,
        ),
      ),
    ),
  ];

  List<Widget> rightPages = const [
    Center(
      child: Text(
        "PAGE#1",
        style: TextStyle(
          color: Colors.red,
          fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#2",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#3",
        style: TextStyle(
          color: Colors.purple,
          fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#4",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#5",
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#6",
        style: TextStyle(
          color: Colors.brown,
          fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        "PAGE#7",
        style: TextStyle(
          color: Colors.green,
          fontSize: 50,
        ),
      ),
    ),
  ];

  Widget getPage() {
    return pages[selectedPageIndex.value];
  }

  Widget getRightPage() {
    return rightPages[selectedRightPageIndex.value];
  }
}
