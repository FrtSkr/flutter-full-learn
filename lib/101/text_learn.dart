// text widgetinden bahsedeceğiz.

import 'package:flutter/material.dart'; // bu snipped'ı eklemek zorundayız.

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Fırat";

  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    // scafold bize otomatik olarak material gücü sağlayacak view ı bu şekilde ekrande anlamlandıracaktır.
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // bir değişkeni string içerisinde aşağıdaki gibi kullanabiliriz fakat bir fonksiyonu süslü parantez içerisinde kullanabiliriz.
            ('Hello $name ${name.length}'),
            maxLines: 2, // stringi 2 satır alması için devamını almaz.
            overflow: TextOverflow
                .ellipsis, // eğer string 2 satırdan büyükse sonuna ... ekler
            textAlign: TextAlign.left,

            style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.red,
                letterSpacing: 2,
                fontSize: 24),
          ),
          Text(
            'Hello $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: ProjectStyles.welcomeStyle,
          ),
          // Projenin en son kullanım şekli aşağıdaki gibidir. Yani en doğrusu bu şekilde.
          Text(
            "Hello $name ${name.length}",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            // İşte bu aşağıdaki en doğru yaklaşım tipidir.
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          //Eğer bir string değişkeni nullablei ise ?? ile işlem yapılmalıdır. Aksi takdirde uygulama patlayabilir.
          Text(userName ?? ''),
          // Bu şekilde argümanları getirmek projeyi daha yönetilebilir ve anlaşılabilir kılar.
          Text(keys.welcome),
        ],
      )),
    );
  }
}

// Bu doğru bir yaklaşımdır. Tekrarı önlemek için. Fakat daha doğru bir yaklaşım var.
class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.red,
      letterSpacing: 2,
      fontSize: 24,
      fontWeight: FontWeight.bold);
}

class ProjectColors {
  // Değişimi anlık olarak güncellemez. Fakat anlık olarak güncelleyen başka bir yol var:
  // static Color get welcomeColor => Colors.red;
  static Color welcomeColor = Colors.yellow;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
