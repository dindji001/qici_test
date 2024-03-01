import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/creancier/add-creancier-page.dart';
import 'package:qici/view/screens/creancier/detail-creancier-page.dart';

class AllCreancier extends StatelessWidget {
  const AllCreancier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.color.secondaryColor,
        onPressed: () {
          route(
            context,
            AddCreancierPage(),
          );
        },
        child: const Icon(Icons.add, color: Colors.white, size: 25),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mes creancier',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        actions: [
          Icon(Icons.filter_list),
        ],
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 80,
            width: width(context),
            decoration: BoxDecoration(
              color: AppTheme.color.primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Recherche...",
                  hintStyle: TextStyle(
                    color: Color(0XffD9D9D9),
                    fontSize: 14,
                  ),
                  fillColor: AppTheme.color.backgroundTextField,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppTheme.asset.utilisateur),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dindji Severin Wilfried',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '25/12/2023',
                              style: TextStyle(
                                color: AppTheme.color.backgroundTextFieldBordu,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        routeAnimation(
                          context,
                          DetailDette(),
                        );
                      },
                      child: Text(
                        'En savoir plus',
                        style: TextStyle(
                          color: AppTheme.color.secondaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
