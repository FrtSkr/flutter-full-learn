import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _globalKey,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('onChanged');
        },
        child: Column(children: [
          TextFormField(
            validator: FormFieldValidator().isNotEmpty,
          ),
          TextFormField(
            validator: FormFieldValidator().isNotEmpty,
          ),
          DropdownButtonFormField(
              validator: FormFieldValidator().isNotEmpty,
              items: const [
                DropdownMenuItem(child: Text('Item1'), value: 'v'),
                DropdownMenuItem(child: Text('Item2'), value: 'v2'),
                DropdownMenuItem(child: Text('Item3'), value: 'v3'),
              ],
              onChanged: (value) {}),
          ElevatedButton(
              onPressed: () {
                if (_globalKey.currentState?.validate() ?? false) {
                  print("Okey!!");
                }
              },
              child: const Text("Save")),
        ]),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmpty;
  }
}

class ValidatorMessage {
  static const String _notEmpty = 'Boş geçilemez!!';
}
