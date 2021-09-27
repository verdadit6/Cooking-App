import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String? url;

  CustomImage({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(url!),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
