import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/app_bar.dart';

void main() {
  // Proje burada başlar ama proje şeması MaterialApp de çizilir ve proje
  // orada devam eder.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Projenin ana rootları MaterialApp de başlar
    //MaterialApp projede 1 tane olmalıdır. Birden fazla olduğu durumda
    //projenin yapısını bozar.
    return MaterialApp(
      title: 'Flutter Demo',
      //AppBarımızı belirli standartlarda oluşturduk
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        //Sistem viewlarının stillerini ayarlar
        systemOverlayStyle: SystemUiOverlayStyle.light,
        //Transparan ve elevation'ı 0 verirsek sayfayla birebir AppBar olur. Güzel de olur :))
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      home: const AppBarLearnView(),
    );
  }
}
