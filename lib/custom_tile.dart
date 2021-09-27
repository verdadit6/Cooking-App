import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final double? height;
  final ImageProvider<Object>? image;
  final String? title;
  final Color? icon1Color;
  final Color? icon2Color;
  final bool? selected;
  final void Function()? onTap;

  CustomTile({
    this.title,
    this.image,
    this.icon1Color,
    this.icon2Color,
    this.selected,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(),
        height: 100,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              selected!
                  ? BoxShadow(
                      blurRadius: 20,
                      color: Colors.deepPurple[200]!,
                    )
                  : BoxShadow(color: Colors.white),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image!,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications_none_sharp,
                          color: icon2Color,
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: icon1Color,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                maxRadius: 25,
                backgroundColor: Colors.amber[800],
                child: IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_book,
                  ),
                  color: Colors.amber[50],
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
