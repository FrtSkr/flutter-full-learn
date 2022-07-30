import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);
  String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  @override
  String _message = '';
  late final bool _isOdd;
  //didChangeDependencies metodu, yine bir draw işlemi olmadan önce yani
  //build metodundan önce fakat initState metodundan sonra çalışır.
  //Ayrıca herhangi bir durumdan ötürü sayfa tekrar yüklenirse bu metod çalışacaktır.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Did change dependencies!!");
  }

  //Üst sınıfta tanımlı olan bir widget değişime uğradığında çalışacak olan
  //metottur.
  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Did update widget!!");
    print('Old widget message: ${oldWidget.message}');
    print('New Widget message: ${widget.message}');
  }

  //initState metodu, build metodu içerisindeki widgetlar çizilmeden önce çağrılır.
  //initState koştuktan sonra build metodu devreye girer ve ekran çizilir.
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print("Init state!!");
  }

//Sayfanın bittiği yani sayfa yaşamanı durdurduğu durumda
//çalışacak olan metottur. Bu metod içerisinde, sonlanması gereken
//componentler sonlandırılır.
  @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  void _computeName() {
    if (_isOdd) {
      _message += "Tek";
    } else {
      _message += "Cift";
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(
              onPressed: () {
                setState(() {
                  _message = widget.message;
                });
              },
              child: Text(_message))
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = widget.message;
                });
              },
              child: Text(_message)),
    );
  }
}
