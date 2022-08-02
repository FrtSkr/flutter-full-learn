import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network('https://picsum.photos/200')),
                Text('$index'),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          print('$index');
          return const Divider(
            color: Colors.white,
          );
        },
        itemCount: 15,
      ),
    );
  }
}

/*
ListView.Builder metodu, gelen verileri sayısına göre ekrana render etmek
için kullanılır. Ekranın görebildiği kısım kadar render eder (aslında tam olarak
ekran oranının %150 si kadar item yerleştirir. Kalan item olursa scroll edildikçe
render eder.) ve scroll
edildikçe diğer itemları render etmeye devam eder.
Bir de ListView.seperated var o da benzr işi yapıyor ufak bir farkı var; 
separatorBuilder. (araştır)
 */