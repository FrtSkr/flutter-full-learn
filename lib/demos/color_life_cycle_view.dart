import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/color_demos_view.dart';

class ColorLifeCycleDemos extends StatefulWidget {
  const ColorLifeCycleDemos({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleDemos> createState() => _ColorLifeCycleDemosState();
}

class _ColorLifeCycleDemosState extends State<ColorLifeCycleDemos> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(_changeBackground);
            },
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            child: ColorDemos(
              initialColor: _backgroundColor,
            ),
          ),
        ],
      ),
    );
  }

  void _changeBackground() {
    _backgroundColor = Colors.pink;
  }
}
