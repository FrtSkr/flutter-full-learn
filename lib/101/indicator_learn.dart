import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularRedProgress()],
      ),
      body: const LinearProgressIndicator(),
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({Key? key}) : super(key: key);
  final Color redColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: redColor,
        strokeWidth: 5,
        value: 0.5,
        backgroundColor: Colors.white,
      ),
    );
  }
}

/*
Mobil uygulamarın web den en büyük farkı internetsiz olma durumlarıdır.
Kullanıcı login olduğunda eğer veriler yüklenmemişse onu karşılayacak
olan yüklenme ekranı yani login state. 
En çok kullanılan componenti de CircularProgressIndicator.
 */