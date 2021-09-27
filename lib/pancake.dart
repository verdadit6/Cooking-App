import 'package:flutter/material.dart';

import 'cookPage.dart';
import 'custom_page.dart';

class Pancake extends StatefulWidget {
  @override
  _PancakeState createState() => _PancakeState();
}

class _PancakeState extends State<Pancake> {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      itemName: "Pancake",
      website: "https://www.happycake/recipe/Pancake",
      url1:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIDd7CFVJs7rI1CC0tvEoHroKqDtTBdsP22w&usqp=CAU",
      url2:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYlcdnxusSEikMTmp_cKZxFl4VPbl-5VBHhA&usqp=CAU",
      url3:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlUX3ZU0eNQ8IwePAVzpjCC_4bGjHGTKFNeg&usqp=CAU",
      url4:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn45J1H726h88unU_snj9iW6iLKYWAvXgVyQ&usqp=CAU",
      url5:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRijBJHGWsRpTkuqLdG4dOMKXmaMEwi2G1Egg&usqp=CAU",
      url6:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0MURG6s3K94JBFY220WoUOLeq6A_x8CPjew&usqp=CAU",
      url7:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsiCWZVYqkhke1YK9royw7gvwzKfNn9XE55w&usqp=CAU",
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return CookPage();
        }));
      },
    );
  }
}
