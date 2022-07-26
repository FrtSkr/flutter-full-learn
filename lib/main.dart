import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/column_row_learn.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/demos/note_demos_view.dart';

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
          //Uygulamadi tüm card widgetlarının temasını özelleştirdik
          cardTheme: CardTheme(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          //Progredd Indicator için de temayı standart haline getirebiliriz.
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Colors.white,
          ),
          //Aynı şekilde listTile'ın da temasını standardize ettik.
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          //Uygulamadaki errorColor'ı standart haline getirdik
          errorColor: ColorsItems.sulu,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            //Sistem viewlarının stillerini ayarlar
            systemOverlayStyle: SystemUiOverlayStyle.light,
            //Transparan ve elevation'ı 0 verirsek sayfayla birebir AppBar olur. Güzel de olur :))
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const ColumnRowLearn(),
    );
  }
}
