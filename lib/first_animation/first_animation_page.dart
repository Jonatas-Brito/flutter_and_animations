import 'package:flutter/material.dart';
import 'package:flutter_and_animations/widget/button_next_page_widget.dart';

import '../second_animation/second_animation_page.dart';

class FirstAnimationPage extends StatefulWidget {
  const FirstAnimationPage({Key? key}) : super(key: key);

  @override
  State<FirstAnimationPage> createState() => _FirstAnimationPageState();
}

class _FirstAnimationPageState extends State<FirstAnimationPage> {
  double sw = 220;
  double sh = 100;
  Color color = const Color(0xff241E38);

  bool hasAnimated = false;

  void _runAnimation() {
    if (hasAnimated) {
      sw = 220;
      sh = 100;
      hasAnimated = !hasAnimated;
      color = const Color(0xff241E38);
    } else {
      sw = 350;
      sh = 200;
      hasAnimated = !hasAnimated;
      color = const Color(0xffE62E4D);
    }

    /// O [setState] serve para que o método build da classe seja
    /// chamado novamente, desse modo, quando os valores de altura
    /// e largura são alterados, o método build "reconstrói" as
    /// arvores de widget, nesse momento o container animado
    /// (que é animado implicitamente), recebe os valores para
    /// se redimencionar.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First animation'),
        actions: [
          ButtonNextPage(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondAnimationPage(),
                ),
              );
            },
          )
        ],
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 3),
          curve: Curves.fastLinearToSlowEaseIn,
          onEnd: () {},
          height: sh,
          width: sw,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: color,
          ),
          child: const Center(
            child: Text(
              'Autodoc',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _runAnimation,
        tooltip: 'Animate',
        child: const Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }
}
