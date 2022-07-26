import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackView extends StatelessWidget {
  const StackView({Key? key}) : super(key: key);
  final _cardHeight = 100.0;
  final _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                //fill özelliği ile sahip olduğu alanı kaplar.
                Positioned.fill(
                  child: const RandomImage(),
                  bottom: _cardHeight / 2,
                ),
                Positioned(
                  height: _cardHeight,
                  bottom: 0,
                  width: _cardWidth,
                  child: _cardCustom(),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }

  Card _cardCustom() {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
