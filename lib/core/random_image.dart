import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100}) : super(key: key);
  final double height;
  final imgUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imgUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
