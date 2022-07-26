import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomFootButton(
                      title: title,
                      onPressed: () {},
                    ),
                  )),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: CustomFootButton(
                title: title,
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFootButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: redColor, shape: const StadiumBorder()),
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

/* Sayfanın büyümesine bağlı olarak componenti dışarı çıkartırız.
UI'a bakarız birdn fazla yerde kullanılıyorsa o zaman en primitive halde
bunu çıkartmamız gerekir. 
Core component yapmakla widget'ı parçalamak farkı şeylerdir.
Core component projenin her noktasında kullanılabiliyor olması
gerekir ve herhangi bir durumdan etkilenmemesi lazım.
Widget parçalamak ise sayfaya ait bir durumdur.
*/