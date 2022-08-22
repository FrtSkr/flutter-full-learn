class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}

/*
fromJson metodu, gelen MAP tipindeki veriyi modelimize işliyor. Yani veri çektiğimiz zaman kullandığımız metod'dur.

toJson metodu, servise data yollayacağımız zaman kullandığımız metod'dur. Göndermek istedimiz datayı hazırladığımız modele yükleriz
ve bu modelin servise Json formasında gitmesi gerekir. Modelimizi servisin istediği formata çevirmeye yarıyor.

*/
