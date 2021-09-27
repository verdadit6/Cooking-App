import 'package:flutter/material.dart';

class CustomSearchbar extends StatelessWidget {
  final String? hintText;

  CustomSearchbar({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.deepPurpleAccent[100],
      ),
    );
  }
}
