import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        // HomePage(),
        // evennementPage(),
        // FavoriePage(),
        // SettingPage(),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home,
      Icons.event,
      Icons.favorite_rounded,
      Icons.settings
    ];
    return Container(
      width: width(context),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ), //BorderRadius.Only
        color: AppTheme.color.secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          items.length,
          (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  pageIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: pageIndex == index
                        ? AppTheme.color.primaryColor
                        : AppTheme.color.secondaryColor,
                  ),
                  child: Icon(
                    items[index],
                    size: 25,
                    color: AppTheme.color.whithColor,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
