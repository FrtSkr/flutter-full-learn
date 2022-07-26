import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //Expanded, ekranın %25 ine sahip olmanı sağlar.
          //Ayrıca expanded sadece row ve column'da kullanılır.
          //flex property'si ile ekranda belirli alana sahip olması sağlanabilir.
          //ekran oranı = sahip olunan flex sayısı / toplam flex sayısı
          //yukarıdaki formüle göre ilk container'a ait alan 4/10 yani %40 tır.
          //ikinci container'a ait alan ise 2/10 dan %20 dir.
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.purple)),
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.orange)),
              ],
            ),
          ),
          //Spacer, arada boşluk bırakmamızı sağlar.
          const Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.purple),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}

/*Yatayda hizalamak için Row widget'ı içerisinde hazır bulunan
mainAxisAligment property'si kullanılabilir. Yine aynı şekilde
hizalama için crossAxisAligment property'si de kullanılabilir. Bu
iki property column için de geçerlidir.
Ayrıca mainAxisSize property'sine de sahiptir. Default olarak
max değerini alır. Yani sahip olduğu alana yayılsın.
Min de verilebilir ve değişim gözlemlenebilir.*/