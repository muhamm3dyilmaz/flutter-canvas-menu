import 'package:canvas_menu/controllers/index_controller.dart';
import 'package:flutter/material.dart';
import 'package:canvas_menu/widgets/pointer.dart';
import 'package:get/get.dart';

class CircleMenuItem extends StatefulWidget {
  const CircleMenuItem({
    this.imageUrl,
    Key? key,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final String? imageUrl;

  final Function() onTap;

  final int index;

  @override
  State<CircleMenuItem> createState() => _CircleMenuItemState();
}

class _CircleMenuItemState extends State<CircleMenuItem> {
  IndexController? indexController;

  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: widget.onTap,
        child: Row(
          children: [
            ClipPath(
              clipper: PointerClipper(),
              child: widget.index == indexController!.index.value
                  ? Container(
                      width: 25,
                      height: 30,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white60,
                            Colors.white,
                          ],
                        ),
                      ),
                    )
                  : Container(
                      width: 25,
                      height: 30,
                      color: Colors.transparent,
                    ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: widget.index == indexController!.index.value
                        ? Colors.white60.withOpacity(0.4)
                        : Colors.transparent,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                child: Opacity(
                  opacity: 0.9,
                  child: InkWell(
                    onTap: widget.onTap,
                    hoverColor: Colors.white60.withOpacity(1),
                    borderRadius: BorderRadius.circular(50),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(widget.imageUrl!),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
