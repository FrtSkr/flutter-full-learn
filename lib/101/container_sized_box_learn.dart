import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          //shink, boş bir alan tanımlamak için,
          //square ise kare bir alan tanımlamak için kullanırız.
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),

          Container(
            height: 50,
            constraints: const BoxConstraints(
                maxHeight: 100, maxWidth: 150, minWidth: 100),
            child: Text('aa' * 1),
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              //circular, her köşeden uygular, only ise belirli köşelerden.
              borderRadius: BorderRadius.circular(10),
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.black]),
              boxShadow: const [
                BoxShadow(
                    color: Colors.blue, offset: Offset(0.1, 1), blurRadius: 12)
              ],
              border: Border.all(width: 10, color: Colors.white12),
            ),
          ),
        ],
      ),
    );
  }
}
