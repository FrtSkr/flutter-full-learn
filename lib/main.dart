import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/list_view_builder.dart';
import 'package:flutter_full_learn/101/list_view_learn.dart';
import 'package:flutter_full_learn/101/page_view_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/statefull_learn.dart';
import 'package:flutter_full_learn/101/statefull_life_cycle_learn.dart';
import 'package:flutter_full_learn/101/text_field_learn.dart';
import 'package:flutter_full_learn/202/tab_learn.dart';
import 'package:flutter_full_learn/demos/MyProjects/login_screen.dart';
import 'package:flutter_full_learn/demos/MyProjects/my_account.dart';
import 'package:flutter_full_learn/demos/color_demos_view.dart';
import 'package:flutter_full_learn/demos/color_life_cycle_view.dart';
import 'package:flutter_full_learn/demos/my_collections_demos.dart';

import '101/navigation_learn.dart';
import '202/model_learn_view.dart';
import '202/package/loading_bar.dart';
import '202/package_learn_view.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_learn_view.dart';

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
      theme: ThemeData.dark().copyWith(
          //TabBar'ı özelleştirdik
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
          ),
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
          //AppBarımızı belirli standartlarda oluşturduk
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            //Sistem viewlarının stillerini ayarlar
            systemOverlayStyle: SystemUiOverlayStyle.light,
            //Transparan ve elevation'ı 0 verirsek sayfayla birebir AppBar olur. Güzel de olur :))
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const PackageLearnView(),
    );
  }
}
