import 'package:flutter/material.dart';

import 'cookPage.dart';
import 'custom_page.dart';

class VanillaCake extends StatefulWidget {
  @override
  _VanillaCakeState createState() => _VanillaCakeState();
}

class _VanillaCakeState extends State<VanillaCake> {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      itemName: "Vanilla Cake",
      website: "https://www.happycake/recipe/VanillaCake",
      url1:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDhNRacr8X_6nezGCRLCUlQEVrBGKLRcbJIw&usqp=CAU",
      url2:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiynjePCGB8Xx_vzusrIbUr0gHsl358x7mEA&usqp=CAU",
      url3:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9qrhwMoc8l37pnKMk5OUp0rPK9okKJQuq7A&usqp=CAU",
      url4:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAbV6CFXBdKBVYPBEypOrwoon2AkCUdnWGoQ&usqp=CAU",
      url5:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzzXdDavFC2ISeHqMKjiZjJlzYfCgEN7TPSA&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSoMo1BIkNzrCmLjyi-4s0ZyIjueY1MKiKAA&usqp=CAU",
      url6:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ86G5a2k1z1djOG7-6MIUYzOHAvjq5FZCXtA&usqp=CAU",
      url7:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXSkrvT31W0TYpb26fRSj9kC5CBPjnQlbthg&usqp=CAU",
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return CookPage();
        }));
      },
    );
  }
}
