import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("Save"),
          ),
          //onPressed metoduna null verdiğimizde disabled moduna geçer.
          ElevatedButton(onPressed: null, child: const Text("Elevated Button")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(10),
              shape: const CircleBorder(),
            ),
            child: const Text("data"),
          ),
          //InkWell metodu, tıklanma efekti ve durumu olmayan widget'a bunları sağlar. Özelleştirilebilir ve widget'ın kapladığı alan kapsamındadır.
          //Yani bir padding'i yoktur yalnızca widgetın sahip olduğu alan kadardır.
          InkWell(
            onTap: () {},
            child: const Text("Custom Button"),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          //Custom button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, right: 40, left: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
