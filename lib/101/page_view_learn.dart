import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  final _pageController = PageController(viewportFraction: 0.7);

  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('$_currentPageIndex'),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      body: PageView(
        //bir sonraki sayfanın ufak bölümünü önizleme gibi gösterir.
        controller: _pageController,
        //Sayfa değişikliğinde index değerini metod içerisine göndererek hangi sayfada
        //olduğumuzun kontrolünü sağladık.
        onPageChanged: _updatePageIndex,
        children: [
          const IndicatorLearn(),
          IconLearnView(),
          const ButtonLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = const Duration(seconds: 1);
}
/*
Page view, içerisine aldığı widgetları pageleme mantığıyla yan yana dizer.
Pagelem mantığı, widgetların yaradılış sırasına göre her birini
tam bir sayfada kabul eder ve sayfalar arası geçiş yapabilme özelliğine
sahiptir.
Yukarıdaki örnek incelendiğinde daha iyi anlaşılacaktır.

 */
