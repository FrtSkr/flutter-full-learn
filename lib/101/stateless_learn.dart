import 'package:flutter/material.dart';

/* Herhangi bir data işleminin yapılmayacağı sadece ekran tasarımını yapılacağı vakit kullanılan widget türü, statelessWidget'tır.
Durum tabiki yapmaz.*/
class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(text: "Fırat"),
          const TitleTextWidget(text: "Fırat2"),
          _emptyBox(),
          const TitleTextWidget(text: "Fırat3"),
          _emptyBox(),
          const TitleTextWidget(text: "Fırat4"),
          const _CustomerContainer(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(
        height: 10,
      );
}

class _CustomerContainer extends StatelessWidget {
  const _CustomerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
