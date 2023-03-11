import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/index_controller.dart';
import 'custom_path.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    Key? key,
    required this.indexController,
    required this.items,
  }) : super(key: key);

  final IndexController? indexController;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              children: [
                //clipper gap area
                Container(
                  width: 65,
                  height: 753,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4B447C),
                        Color(0xFF5A5180),
                      ],
                    ),
                  ),

                  //clipper
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          width: 65,
                          height: 753,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF59479e),
                                Color(0xFF836FAF),
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          padding: const EdgeInsets.only(
                            top: 30,
                            left: 15,
                            right: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //right panel
                Obx(
                  () => Container(
                    height: 753,
                    width: 239,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF564C8C),
                          Color(0xFF786896),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: indexController!.getPage(),
                  ),
                ),
              ],
            ),

            //left panel & avatars
            Positioned(
              top: 15,
              left: -6,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        "https://media.wired.com/photos/62855b1bb6cfd378a30c474a/1:1/w_1600,h_1600,c_limit/Build-Game-Watch-It-Die-Hyper-Scape-Games.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(height: 75),
                  SizedBox(
                    width: 65,
                    child: ListView.builder(
                      itemBuilder: (context, index) => items[index],
                      itemCount: items.length,
                      shrinkWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
