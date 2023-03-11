import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/right_panel_items.dart';
import '../controllers/index_controller.dart';

class RightPanelPageOne extends StatefulWidget {
  const RightPanelPageOne({
    Key? key,
  }) : super(key: key);

  @override
  State<RightPanelPageOne> createState() => _RightPanelPageOneState();
}

class _RightPanelPageOneState extends State<RightPanelPageOne> {
  IndexController? indexController;

  @override
  void initState() {
    indexController = Get.find(tag: 'index');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Explore",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const Divider(
          height: 1,
          color: Colors.white60,
        ),
        const SizedBox(height: 10),
        RightPanelItems(
          index: 0,
          onTap: () {
            indexController!.rightIndex.value = 0;
            indexController!.selectedRightPageIndex.value = 0;
            Get.back();
          },
          itemText: "Home",
          itemIcon: const Icon(
            Icons.home,
            color: Colors.white60,
            size: 20,
          ),
        ),
        const SizedBox(height: 10),
        RightPanelItems(
          index: 1,
          onTap: () {
            indexController!.rightIndex.value = 1;
            indexController!.selectedRightPageIndex.value = 1;
            Get.back();
          },
          itemText: "Music",
          itemIcon: const Icon(
            Icons.music_note,
            color: Colors.white60,
            size: 20,
          ),
        ),
        const SizedBox(height: 10),
        RightPanelItems(
          index: 2,
          onTap: () {
            indexController!.rightIndex.value = 2;
            indexController!.selectedRightPageIndex.value = 2;
            Get.back();
          },
          itemText: "Gaming",
          itemIcon: const Icon(
            Icons.gamepad,
            color: Colors.white60,
            size: 20,
          ),
        ),
        const SizedBox(height: 10),
        RightPanelItems(
          index: 3,
          onTap: () {
            indexController!.rightIndex.value = 3;
            indexController!.selectedRightPageIndex.value = 3;
            Get.back();
          },
          itemText: "Education",
          itemIcon: const Icon(
            Icons.cast_for_education,
            color: Colors.white60,
            size: 20,
          ),
        ),
        const SizedBox(height: 10),
        RightPanelItems(
          index: 4,
          onTap: () {
            indexController!.rightIndex.value = 4;
            indexController!.selectedRightPageIndex.value = 4;
            Get.back();
          },
          itemText: "Science & Tech",
          itemIcon: const Icon(
            Icons.science,
            color: Colors.white60,
            size: 20,
          ),
        ),
        const SizedBox(height: 10),
        RightPanelItems(
          index: 5,
          onTap: () {
            indexController!.rightIndex.value = 5;
            indexController!.selectedRightPageIndex.value = 5;
            Get.back();
          },
          itemText: "Entertainament",
          itemIcon: const Icon(
            Icons.play_circle,
            color: Colors.white60,
            size: 20,
          ),
        ),
        const SizedBox(height: 10),
        RightPanelItems(
          index: 6,
          onTap: () {
            indexController!.rightIndex.value = 6;
            indexController!.selectedRightPageIndex.value = 6;
            Get.back();
          },
          itemText: "Student Hubs",
          itemIcon: const Icon(
            Icons.hub_rounded,
            color: Colors.white60,
            size: 20,
          ),
        ),
      ],
    );
  }
}
