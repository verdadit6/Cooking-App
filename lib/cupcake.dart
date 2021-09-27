import 'package:cooking_app/cookPage.dart';
import 'package:cooking_app/custom_page.dart';
import 'package:flutter/material.dart';

class Cupcake extends StatefulWidget {
  @override
  _CupcakeState createState() => _CupcakeState();
}

class _CupcakeState extends State<Cupcake> {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      itemName: "Cupcake",
     
      website: "https://www.happycake.ir/recipe/cupcake/",
      url1:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp3vVqteeyGrT3QgCrxGi3cfpaVYu9Qq3LOA&usqp=CAU",
      url2:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1he14ePl2_gB-zSz_5roH82Ewxisj4jlzKQ&usqp=CAU",
      url3:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL8EjTWAm4JBm5TISkmt9daVdoOdBrlc06jw&usqp=CAU",
      url4:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROEBdXAO2oA8HnGBPQRoFmL9N2TwSMJFTIAQ&usqp=CAU",
      url5:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN48ZxaIyv3CE111isX2qrBgCM-sPjMhrmxg&usqp=CAU",
      url6:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCU6Ua1vP9zWSkGLibXhkFqDxs4KIDBcqfZA&usqp=CAU",
      url7:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThQi29NoKayWVQZmmQRP-9FEzofhF6wFAlUQ&usqp=CAU",
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return CookPage();
        }));
      },
    );
  }
}
