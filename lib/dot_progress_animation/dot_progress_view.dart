import 'package:flutter/material.dart';
import 'package:flutter_and_animations/dot_progress_animation/dot_progress_animation.dart';

class DotProgressView extends StatefulWidget {
  const DotProgressView({super.key});

  @override
  State<DotProgressView> createState() => _DotProgressViewState();
}

class _DotProgressViewState extends State<DotProgressView> {
  late AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {},
              child: DotProgressAnimation(
                animationController: (animationController) {
                  _animationController = animationController;
                },
              ),
            ),
          ),
          Positioned(
            bottom: 300,
            child: ElevatedButton(
              onPressed: () {
                if (_animationController.isAnimating) {
                  _animationController.stop();
                  _animationController.reset();
                } else {
                  _animationController.forward();
                }
              },
              child: const Text('Forward animation'),
            ),
          )
        ],
      ),
    );
  }
}
