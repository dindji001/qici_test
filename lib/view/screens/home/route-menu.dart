import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/home/home-menu.dart';
import 'package:qici/view/screens/home/menu-items/achats.dart';
import 'package:qici/view/screens/home/menu-items/parametre.dart';
import 'package:qici/view/screens/home/menu-items/ventes.dart';
import 'package:qici/view/screens/ventes/vende-page.dart';

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
        HomeMenu(),
        VentesPage(),
        AchatPage(),
        ParametrePage(),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home,
      Icons.real_estate_agent,
      Icons.shopping_basket,
      Icons.settings
    ];
    List itemsName = ['home', 'ventes', 'achats', 'parametres'];
    return Container(
      width: width(context),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), //BorderRadius.Only
        color: AppTheme.color.whithColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 208, 172, 226),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  child: Column(
                    children: [
                      Icon(
                        items[index],
                        size: 25,
                        color: pageIndex == index
                            ? AppTheme.color.primaryColor
                            : Color.fromARGB(255, 208, 172, 226),
                      ),
                      Text(
                        itemsName[index],
                        style: TextStyle(
                          color: pageIndex == index
                              ? AppTheme.color.primaryColor
                              : Color.fromARGB(255, 208, 172, 226),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
