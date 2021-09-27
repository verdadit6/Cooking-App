import 'package:flutter/material.dart';

import 'cookPage.dart';
import 'custom_page.dart';

class Donut extends StatefulWidget {
  @override
  _DonutState createState() => _DonutState();
}

class _DonutState extends State<Donut> {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      itemName: "Donut",
      website: "https://www.happycake.ir/recipe/donut/",
      url1:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ2rj7AVBlzUE0hCB5JQQcbtQ60aLXGce8Tw&usqp=CAU",
      url2:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAbZVPY87FGcsAeNUIJUNSCmpZ-2FzNekwyw&usqp=CAU",
      url3:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI_eq-CZH_IPeqypY6WGv664hzM6xt9hGFzg&usqp=CAU",
      url4:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrtGufC2zZiOOmspdemdkeliCYA_sSHotvTg&usqp=CAU",
      url5:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQggczsFACosbmLWpxQ56wz61Y4O6iyvWlzwQ&usqp=CAU",
      url6:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe3tR7wMYkU9F27rPm-ojTPzm2DlvO65L2OA&usqp=CAU",
      url7:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFNvWd2JPO5aOpbdR58mGUCLMZZDihqgdBNw&usqp=CAU",
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return CookPage();
        }));
      },
    );
  }
}
