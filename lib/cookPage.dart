import 'package:cooking_app/cupcake.dart';
import 'package:cooking_app/custom_chip.dart';
import 'package:cooking_app/custom_searchbar.dart';
import 'package:cooking_app/custom_tile.dart';
import 'package:cooking_app/pancake.dart';
import 'package:cooking_app/vanilla_cake.dart';
import 'package:cooking_app/welcome_page.dart';
import 'package:flutter/material.dart';

import 'donut.dart';

class CookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              height: 200,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.navigate_before),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return WelcomePage();
                          }));
                        },
                        color: Colors.white,
                        iconSize: 35,
                      ),
                      SizedBox(width: 110),
                      Text(
                        "Cooking",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 110),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_on,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 380,
                        child: CustomSearchbar(
                          hintText: "what bookmark are you searching for?",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 540,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Lables",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: customChipList,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Bookmark",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(
                        Icons.delete_outlined,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.menu_book_outlined,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.swap_vertical_circle_outlined,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.grey[700],
                      ),
                      Text(
                        "154",
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 370,
                    child: ListView.builder(
                        padding: EdgeInsets.all(10),
                        itemCount: tileList.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: CustomTile(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return tileList[index].onTap!;
                                    },
                                  ),
                                );
                              },
                              selected: tileList[index].selected,
                              title: tileList[index].title,
                              image: tileList[index].image,
                              icon1Color: tileList[index].icon1Color,
                              icon2Color: tileList[index].icon2Color,
                              height: tileList[index].height,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<CustomTileData> tileList = [
    CustomTileData(
      selected: false,
      height: 100,
      icon1Color: Colors.deepPurple[200],
      icon2Color: Colors.deepPurple[200],
      onTap: VanillaCake(),
      title: "Vanilla Cake",
      image: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK3klV06SW2cyqhXTw2_6WhGl0HUQbpvfgiw&usqp=CAU",
      ),
    ),
    CustomTileData(
      selected: true,
      height: 100,
      icon1Color: Colors.amber[800],
      icon2Color: Colors.deepPurple[200],
      onTap: Cupcake(),
      title: "Cupcake",
      image: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLEMR0trKlikoD23KrCanTBWZ8XbG0QqUf6g&usqp=CAU",
      ),
    ),
    CustomTileData(
      selected: false,
      height: 100,
      icon1Color: Colors.amber[800],
      icon2Color: Colors.amber[800],
      onTap: Pancake(),
      title: "Pancake",
      image: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqaIKWoJdMA75NjM_CfC9y7_EcAseEAuzXNA&usqp=CAU",
      ),
    ),
    CustomTileData(
      selected: false,
      height: 100,
      icon1Color: Colors.deepPurple[200],
      icon2Color: Colors.deepPurple[200],
      onTap: Donut(),
      title: "Donut",
      image: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNoqG28JWzT2dMg53BmR4LLB8ADGggK1xKyw&usqp=CAU",
      ),
    ),
  ];

  List<Widget> customChipList = [
    SizedBox(width: 20),
    CustomChip(
      width: 30,
      label: "+",
      backgroundColor: Colors.white,
      color: Colors.deepPurple,
      border: Border.all(
        color: Colors.deepPurple,
        width: 1,
      ),
    ),
    SizedBox(width: 10),
    CustomChip(
      width: 40,
      label: "All",
      backgroundColor: Colors.deepPurple[100],
      color: Colors.white,
    ),
    SizedBox(width: 10),
    CustomChip(
      width: 50,
      backgroundColor: Colors.deepPurple[400],
      color: Colors.white,
      label: "Cake",
    ),
    SizedBox(width: 10),
    CustomChip(
      width: 80,
      backgroundColor: Colors.deepPurple[100],
      color: Colors.white,
      label: "Fast Food",
    ),
    SizedBox(width: 10),
    CustomChip(
      width: 60,
      backgroundColor: Colors.deepPurple[100],
      color: Colors.white,
      label: "Kabab",
    ),
    SizedBox(width: 10),
    CustomChip(
      width: 70,
      backgroundColor: Colors.deepPurple[100],
      color: Colors.white,
      label: "Chinise",
    ),
    SizedBox(width: 10),
    CustomChip(
      width: 70,
      backgroundColor: Colors.deepPurple[100],
      color: Colors.white,
      label: "Italian",
    ),
    SizedBox(width: 10),
    CustomChip(
      width: 80,
      backgroundColor: Colors.deepPurple[100],
      color: Colors.white,
      label: "Maxican",
    ),
  ];
}

class CustomTileData {
  final double? height;
  final bool? selected;
  final Widget? onTap;
  final String? title;
  final ImageProvider<Object>? image;
  final Color? icon1Color;
  final Color? icon2Color;

  CustomTileData({
    this.height,
    this.selected,
    this.icon1Color,
    this.icon2Color,
    this.onTap,
    this.title,
    this.image,
  });
}
