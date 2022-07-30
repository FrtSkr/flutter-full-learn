import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({Key? key}) : super(key: key);

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  final String _welcomeTitle = LanguageItems.welcomeTitle;
  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    log();
    return ElevatedButton(
        onPressed: () {
          _updateCounter();
        },
        child: Column(
          children: [
            Text('$_welcomeTitle $_counterCustom'),
          ],
        ));
  }

  void log() {
    print("Counter Hello Button");
  }
}
