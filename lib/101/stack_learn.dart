import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.orange,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.green,
              height: 75,
            ),
          ),
          Positioned(
            bottom: 0,
            top: 25,
            height: 100,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

/*
Stack, iç içe component olacağı durumlarda kullanılır. İçerisinde bize sağladığı bazı componentler
mevcuttur. Bunlardan birisi positioned. 
Positioned, bazı özel componentler yaratamızı ve ekranda istediğimiz yere konumlandırmamızı sağlar.
Positioned.fill özelliği de vardır (araştır).

Row, yan yana
Column, alt alta
 */
