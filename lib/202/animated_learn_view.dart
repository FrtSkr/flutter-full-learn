import 'package:flutter/material.dart';

const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    //AnimatedIcon animasyon kontrolü
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationFast);
  }

  bool _isVisible = false;
  bool _isOpacity = false;

  late AnimationController controller;
  void _changedLoading() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changedOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changedLoading();
        controller.animateTo(_isVisible ? 1 : 0);
      }),
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      body: Column(children: [
        ListTile(
          title: AnimatedOpacity(
            duration: _DurationItems.durationFast,
            opacity: _isOpacity ? 1 : 0,
            child: const Text('data'),
          ),
          trailing: IconButton(
            onPressed: () {
              _changedOpacity();
            },
            icon: const Icon(Icons.precision_manufacturing_rounded),
          ),
        ),
        AnimatedDefaultTextStyle(
            child: const Text('Data'),
            style: (_isVisible
                    ? context.textTheme().headline1
                    : context.textTheme().subtitle1) ??
                const TextStyle(),
            duration: _DurationItems.durationFast),
        AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
        AnimatedContainer(
          duration: _DurationItems.durationFast,
          height: _isVisible ? kZero : MediaQuery.of(context).size.width * 0.2,
          width: MediaQuery.of(context).size.height * 0.2,
          color: Colors.blue,
          margin: const EdgeInsets.all(20),
        ),
        Expanded(
          child: Stack(
            children: const [
              AnimatedPositioned(
                child: Text('AnimatedPosi.'),
                duration: _DurationItems.durationFast,
                top: 30,
              ),
            ],
          ),
        ),
        Expanded(
          child: AnimatedList(itemBuilder: ((context, index, animation) {
            return const Text(
              'AnimatedList',
              style: TextStyle(color: Colors.black),
            );
          })),
        )
      ]),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: _DurationItems.durationFast,
    );
  }
}

//Sürekli kullandığımız Theme.of() metodunu tekrar olmaması açısından
//ve okunabilirlik açısından extension ile yarattık
// Yeni kullanım: style: context.textTheme().subtitle1,
extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationFast = Duration(milliseconds: 350);
}
