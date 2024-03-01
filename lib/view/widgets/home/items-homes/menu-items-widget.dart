import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qici/utils/navigation_service.dart';

class MenuItemWidget extends StatefulWidget {
  final String urlImageMenuItem;
  final String nameMenuItem;
  final Widget urlRootMenuItem;

  const MenuItemWidget({
    super.key,
    required this.urlImageMenuItem,
    required this.nameMenuItem,
    required this.urlRootMenuItem,
  });

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        routeAnimation(context, widget.urlRootMenuItem);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(234, 224, 172, 249),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.urlImageMenuItem),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 70,
              height: 80,
              child: Text(
                textAlign: TextAlign.center,
                widget.nameMenuItem,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
