import 'package:flutter/material.dart';

import 'custom_image.dart';

class CustomPage extends StatelessWidget {
  final void Function()? onPressed;
  final String? itemName;
  final String? website;
  final String? description;
  final String? url1;
  final String? url2;
  final String? url3;
  final String? url4;
  final String? url5;
  final String? url6;
  final String? url7;

  const CustomPage({
    this.onPressed,
    this.itemName,
    this.website,
    this.description,
    this.url1,
    this.url2,
    this.url3,
    this.url4,
    this.url5,
    this.url6,
    this.url7,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 150,
              color: Colors.deepPurpleAccent,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        color: Colors.white,
                        iconSize: 33,
                        icon: Icon(Icons.navigate_before),
                        onPressed: onPressed,
                      ),
                      SizedBox(width: 90),
                      Text(
                        itemName!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 90),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height - 130,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "H",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Title",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 30,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            itemName!,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.usb_outlined,
                          color: Colors.grey[700],
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Url",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              website!,
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.menu,
                          color: Colors.grey[700],
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Text(
                                  """ Ensure that all ingredients are at room
temperature.This helps make sure
 everything gets incorporated 
together properly. Not doing this
can result in poor emulsification
and a less than perfect final product.
Measure your flour properly.Spoon and 
level the flour into the measuring 
cup as a scoop.the latter packs in the 
flour and can result in dense and 
dry cakes.""",
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        SizedBox(width: 20),
                        Icon(Icons.image),
                        SizedBox(width: 5),
                        Text(
                          "Photos",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Colors.deepPurple,
                                  width: 1,
                                ),
                                color: Colors.deepPurple[100],
                              ),
                              height: 80,
                              width: 80,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(width: 15),
                            CustomImage(
                              url: url1,
                            ),
                            SizedBox(width: 15),
                            CustomImage(url: url2),
                            SizedBox(width: 15),
                            CustomImage(url: url3),
                            SizedBox(width: 15),
                            CustomImage(url: url4),
                            SizedBox(width: 15),
                            CustomImage(url: url5),
                            SizedBox(width: 15),
                            CustomImage(url: url6),
                            SizedBox(width: 15),
                            CustomImage(url: url7),
                          ],
                        ),
                      ),
                      height: 100,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Colors.deepPurple[100],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromWidth(50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Colors.deepPurpleAccent,
                                width: 1,
                              ),
                              primary: Colors.transparent,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: Colors.deepPurpleAccent,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Save",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 260,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    iconSize: 30,
                    color: Colors.deepPurpleAccent[100],
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    iconSize: 30,
                    color: Colors.amber[800],
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
