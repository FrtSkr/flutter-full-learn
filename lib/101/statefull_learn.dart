import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

//Dış sınıflarla etikileşime girecek olan, dışardan data al ver işinin gerçekleştiği alan
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

//Statelerin yönetildiği, etkiye tepki olaylarının gerçekleştiği alan
//Asıl logiclerimizi yazacağımız yer
class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue += 1;
    } else {
      if (_countValue != 0) _countValue -= 1;
    }
    //setState metodu çağrıldığında, build metodu tekrar tetiklenir
    //ve ekran güncellenir. Detay: build metodu çağrıldığında
    //O SAYFA içerisinde yaratılmış widgetlara tekrardan çağrıda
    //bulunur. Farklı bir sayfa/dosya içerisinde yaratılmış widget
    //tetiklenmez.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '$_countValue',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print("Statefull Learn");
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}



/*
Statefull widget, değişecek durumların olduğu sayfa veya widgetların yönetimi için kullanılan,
etkiye tepki olaylarının yönetiminde kullanılan widget çeşididir.
 */
