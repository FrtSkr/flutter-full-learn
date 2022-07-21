import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Colors Learn")),
      body: Column(children: [
        Container(
          child: Text(
            "DATA",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Theme.of(context).errorColor,
                ),
          ),
        )
      ]),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color(0xffEDBF61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
