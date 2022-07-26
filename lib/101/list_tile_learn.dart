import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(),
                onTap: () {},
                subtitle: const Text('How do you use your card?'),
                leading: const Icon(Icons.money),
                minVerticalPadding: 0,
                dense: true,
                trailing: Container(
                  width: 20,
                  color: Colors.red,
                  child: const SizedBox(
                    width: 20,
                    child: Icon(Icons.chevron_right),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}


/*
ListTile, card tasarımı ve daha fazlasını yapmak için bize olanaklar
sunuyor. İçerisinde itemları yerleştirmek için hazır bir çok attribute
var. Card componenti ile sarmalandığında listTile'a ait özellikler
card componentine kazandırılmış olur, çok ta güzel olur :))
 */

/*
Core dizini, projeye özgü olmayan genel olarak heryerde rahatlıkla
kullanılabilecek widgetların vs. bulunduğu alan.
Product dizini ise projeye özgüdür ve heryerde rahatlıkla kullanılamaz.
Core'da yaratılan widgetları kullanabilir ve bu widgetları özelleştirip
proje gereksinimine göre eklemeler yapabilir.
 */