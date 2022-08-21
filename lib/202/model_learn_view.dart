import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel8 postModel8 = PostModel8(body: "body");
  @override
  void initState() {
    super.initState();
    final user1 = PostModel()
      ..userId = 1
      ..body = "FRT";
    user1.title = "Model learn";

    final user2 = PostModel2(1, 2, "title", "body");
    user2.id = 1;

    final user3 = PostModel3(1, "title", "body", 2);
    //user3.id = 1; //değişken final olduğu için hata verir.

    final user4 = PostModel4(userId: 1, title: "title", body: "body", id: 2);

    final user5 = PostModel5(userId: 1, title: "title", body: "body", id: 2);

    final user6 = PostModel6(userId: 1, title: "title", body: "body", id: 2);

    final user7 = PostModel7();

    final user8 = PostModel8(body: "POST MODEL 8");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            postModel8 = postModel8.copyWith(title: "Değer atandı");
            postModel8.updateBody("Body değişti");
          });
        },
      ),
      appBar: AppBar(
        title: Text(postModel8.title ?? "Atanmamış değer"),
      ),
    );
  }
}
