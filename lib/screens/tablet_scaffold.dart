import 'package:canvas_menu/controllers/index_controller.dart';
import 'package:canvas_menu/widgets/circle_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/my_menu.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.put(IndexController(), tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List items = [
      CircleMenuItem(
        index: 0,
        onTap: () {
          indexController!.index.value = 0;
          indexController!.selectedPageIndex.value = 0;
        },
        imageUrl:
            "https://media.istockphoto.com/id/1306435820/photo/neon-sign-on-a-brick-wall-glowing-gamepad-icon-abstract-background-spectrum-vibrant-colors-3d.jpg?b=1&s=170667a&w=0&k=20&c=vBW8kzv8FWyZlJVqMk6T-U4mX2dBSTcWWqNRLnd-h5s=",
      ),
      const SizedBox(height: 20),
      CircleMenuItem(
        index: 1,
        onTap: () {
          indexController!.index.value = 1;
          indexController!.selectedPageIndex.value = 1;
        },
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTndkeD1gghcDhFfxlu49nzizsVjhmScgMbSQ&usqp=CAU",
      ),
      const SizedBox(height: 20),
      CircleMenuItem(
        index: 2,
        onTap: () {
          indexController!.index.value = 2;
          indexController!.selectedPageIndex.value = 2;
        },
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbOknz5rZG2FHSIvPcJMNEb_KY3BhCQyAZSA&usqp=CAU",
      ),
      const SizedBox(height: 20),
      CircleMenuItem(
        index: 3,
        onTap: () {
          indexController!.index.value = 3;
          indexController!.selectedPageIndex.value = 3;
        },
        imageUrl:
            "https://iatkv.tmgrup.com.tr/bf1b58/616/321/0/0/1174/612?u=https%3A%2F%2Fitkv.tmgrup.com.tr%2F2020%2F12%2F17%2Fkurtlar-vadisiyle-nam-salan-efsane-palanin-son-hali-cok-konusuldu-dagda-keklik-burada-domates-1608229373524.jpg",
      ),
      const SizedBox(height: 20),
      CircleMenuItem(
        index: 4,
        onTap: () {
          indexController!.index.value = 4;
          indexController!.selectedPageIndex.value = 4;
        },
        imageUrl:
            "https://iatkv.tmgrup.com.tr/bf1b58/616/321/0/0/1174/612?u=https%3A%2F%2Fitkv.tmgrup.com.tr%2F2020%2F12%2F17%2Fkurtlar-vadisiyle-nam-salan-efsane-palanin-son-hali-cok-konusuldu-dagda-keklik-burada-domates-1608229373524.jpg",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Canvas Menu"),
        backgroundColor: const Color(0xFF59479e),
      ),
      drawer: MyMenu(indexController: indexController, items: items),
      body: Obx(
        () => Container(
          child: indexController!.getRightPage(),
        ),
      ),
    );
  }
}
