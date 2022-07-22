import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

/*
Assets dizini içerisinde tutulabilecek dosyalar:
1-Localization language
2-Projenin config dosyaları 
3-Imageler
4-GIF, SVG
assets içerisindeki dosyayı dahil etmek için pubspec dosyasında assets altında başvuruda bulunuyoruz.
*/

//assets() --> Localden image veri çeker, file() --> Telefonda bulunan dosyadan image veriyi çeker
//memory() --> bazı imageler Byte array tipindedir. Bu tipte olan imageler için kullanılır.
//network --> Uzak sunucudan image veriyi çekmek için kullanılır.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 150,
            child: Image.asset(
              ImageItems().appleWithBook,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 200,
            width: 150,
            child: PngImage(
              name: ImageItems().appleBookWithoutPath,
            ),
          ),
          SizedBox(
            height: 200,
            width: 150,
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/0/00/Apple-book.svg',
              //Image yüklenirken bir hata ile karşılaşması durumunda yerini alacak görsel bu şekilde eklenir
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.abc_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple-book.png";
  final String appleBook = "assets/png/apple-book.png";
  final String appleBookWithoutPath = "books-and-apple";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
