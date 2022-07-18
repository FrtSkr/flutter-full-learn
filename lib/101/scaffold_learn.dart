import 'package:flutter/material.dart';

/* Scaffold, uygulamanın temel iskeletini oluşturur. appBar, body ve bottomNavigationBar bunlar temel iskelet yapısıdır. */
class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scaffold Samples")),
      body: const Text('Selam!!!'),
      backgroundColor: Colors.red,

      floatingActionButton: FloatingActionButton(
        //Basıldığında alttan 200 yüksekliğinde bir container çıkacaktır.
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      //Floating barın konumunu bildirir.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      ]),
    );
  }
}
