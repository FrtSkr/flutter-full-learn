import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(_MyTabViews.home.index);
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        //Bu özelliği kullanarak TabBar oluşturduğumuzda da ekranın altında
        //TabBar'ı oluşturur.
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            onTap: (int index) {
              print(index);
            },
            tabs: _MyTabViews.values
                .map((e) => Tab(
                      text: e.name,
                    ))
                .toList(),
          ),
        ),
        //AppBar'a ait bottom özelliğine TabBar verildiğinde ekranında üstünde
        //TabBar alanı oluşturur.
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Page1'),
              Tab(text: 'Page2'),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          //DefaultTabController'a boyut olarak 2 belirtmiştik. Bu yüzden
          //ikiden fazla child için hata verir.
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

enum _MyTabViews { home, profile }

//enum'a güç kazandırmak için kullanırız.
extension _MyTabViewExtension on _MyTabViews {}

/*
TabController'ı kullanabilmek için TickerProviderStateMixin sınıfını eklememiz
gerekir (vsync özelliği için).
TabController sınıfını, sayfa geçişlerini (_tabController.animateTo(0)) ayarlamak için kullanabiliriz.
TabBarView içerisinde physics özelliğine NeverScrollableScrollPhysics() verdiğimizde
sayfa geçişlerinde kaydırmayı kapatır.
 */