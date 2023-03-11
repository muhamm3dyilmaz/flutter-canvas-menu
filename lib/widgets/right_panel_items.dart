import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class RightPanelItems extends StatefulWidget {
  const RightPanelItems({
    required this.itemText,
    required this.itemIcon,
    Key? key,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  @override
  State<RightPanelItems> createState() => _RightPanelItemsState();

  final Icon itemIcon;
  final String itemText;
  final Function() onTap;
  final int index;
}

class _RightPanelItemsState extends State<RightPanelItems> {
  IndexController? indexController;

  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        color: widget.index == indexController!.rightIndex.value
            ? const Color(0xFF2D2655)
            : Colors.transparent,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onTap,
            hoverColor: const Color(0xFF2D2655),
            splashColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 130,
                child: Row(
                  children: [
                    widget.itemIcon,
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.itemText,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
