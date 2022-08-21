class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.title, this.body, this.id);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4(
      {required this.userId,
      required this.title,
      required this.body,
      required this.id});
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5(
      {required int userId,
      required String title,
      required String body,
      required int id})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6(
      {required int userId,
      required String title,
      required String body,
      required int id}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel7(
      {int userId = 0, String title = '', String body = '', int id = 0}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel8({this.userId, this.id, this.title, this.body});

  updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }

//Final tanımlı değişkenler çalışma zamanından sonra atanamayacağı için
//copyWith yöntemi kullanılarak sonradan değişken tanımı veya değer değişimi
//gerçekleştirilebilir.
  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}


/*
Tanımlanan fieldların initialize etmenin bir kaç yöntemi var.
1. Yöntem: Hepsinin başına ? atarak bu değişkenler null gelebilir diyebiliriz.
2. Yöntem: Constructor ile tanımlanan değişkenler alınabilir.
3. Yöntem: Değişkenler final keywordü ile tanımlanır ve yalnızca constructor 
zamanında atanabileceğini ve initialize edileceğini bildirir.
4. Yöntem: 3. yöntemle aynı işi görür, tek farkı named parametre olarak tanımlama
gerçekleştirir.
5. Yöntem: Değişkenler private tanımlanır ve constructor'dan gelen veriler ile 
eşleştirilerek initialize edilir.
6. Yöntem: late keywordü ile tanımlanan değişkene sonradan atanacağı bildiriliyor.
late final tanımlı olduğu için o değişken contructordan gelen veri ile sonradan
tanımlanacak anlamı taşır. Eğer constructor dışında atama gerçekleşirse uygulama
crash hatası verir.
7. Yöntem: Constructor'da default değer atanabilir ve böylelikle o değişkenin
zorunlu olarak tanımlanması gerekmez.
8. Yöntem: Servisten veri çekileceği vakit en çok kullanılan yöntemdir. Gelen
verilerin null olma ihtimalini bildirir ve değişken tanımlamasını zorunlu
tutmaz.
 */