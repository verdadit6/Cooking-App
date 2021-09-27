import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final void Function()? onPressed;
  final Color? container1Color;
  final Color? container2Color;
  final Color? textColor;
  final String? text;
  final IconData? icons;
  Options({
    this.text,
    this.container1Color,
    this.container2Color,
    this.textColor,
    this.icons,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: IconButton(
                iconSize: 30,
                onPressed: onPressed,
                icon: Icon(
                  icons,
                  size: 40,
                  color: textColor,
                )),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: container2Color,
            ),
          ),
          Text(
            text!,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: container1Color,
      ),
      height: 150,
      width: 150,
    );
  }
}
