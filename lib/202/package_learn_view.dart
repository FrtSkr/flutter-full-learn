import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const LoadingBar(),
    );
  }
}
