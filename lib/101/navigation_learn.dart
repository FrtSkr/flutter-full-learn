import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/list_view_builder.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Placeholder(
        color: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_outlined),
        onPressed: () {
          navigateToWidget(context, const ListViewBuilderLearn());
        },
      ),
    );
  }
}

//Mixing: constructorı olmayan bir class
mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        //dinamik veya obje olarak herhangi
        //birşeyi argumants propertysi ile yollayabiliyoruz.
        settings: const RouteSettings(),
      ),
    );
  }
}

/*
Navigation, sayfalar arası geçiş ve widgetlar arası data 
alışverişinde kullanılır.
 */
