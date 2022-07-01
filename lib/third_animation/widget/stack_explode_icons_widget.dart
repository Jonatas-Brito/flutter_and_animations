import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_and_animations/third_animation/widget/circle_full_icon_widget.dart';
import 'package:flutter_and_animations/third_animation/widget/circle_outline_icon_widget.dart';
import 'package:flutter_and_animations/third_animation/widget/star_icon_widget.dart';

class StackExplodeIcons extends StatefulWidget {
  final BoxConstraints constraints;
  final AnimationController animationController;
  const StackExplodeIcons(
      {required this.constraints, required this.animationController, Key? key})
      : super(key: key);

  @override
  State<StackExplodeIcons> createState() => _StackExplodeIconsState();
}

class _StackExplodeIconsState extends State<StackExplodeIcons> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleOutlineIconWidget(
            animationController: widget.animationController,
            translateX: 123,
            translateY: 312,
            color: const Color.fromARGB(255, 92, 26, 167),
            widthBorder: 3,
            opacity: 1,
            size: 22,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: 82,
            translateY: 433,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 25,
            height: 25,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleFullIconWidget(
            animationController: widget.animationController,
            translateX: -214,
            translateY: -123,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            size: 25,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: 113,
            translateY: -24,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 28,
            height: 28,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: -102,
            translateY: -444,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 23,
            height: 23,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: 200,
            translateY: 0,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 22,
            height: 22,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: -200,
            translateY: 0,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 22,
            height: 22,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleFullIconWidget(
            animationController: widget.animationController,
            translateX: 300,
            translateY: -34,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            size: 25,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleOutlineIconWidget(
            size: 15,
            widthBorder: 3,
            animationController: widget.animationController,
            translateX: -24,
            translateY: -94,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleOutlineIconWidget(
            size: 19,
            widthBorder: 3,
            animationController: widget.animationController,
            translateX: -200,
            translateY: -82,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleFullIconWidget(
            animationController: widget.animationController,
            translateX: 240,
            translateY: -68,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            size: 15,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: -132,
            translateY: 80,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 18,
            height: 18,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleFullIconWidget(
            animationController: widget.animationController,
            translateX: -240,
            translateY: -34,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            size: 25,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: 52,
            translateY: 234,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 25,
            height: 25,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleOutlineIconWidget(
            size: 27,
            widthBorder: 6,
            animationController: widget.animationController,
            translateX: -24,
            translateY: 94,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: CircleOutlineIconWidget(
            animationController: widget.animationController,
            translateX: 50,
            translateY: -342,
            color: const Color.fromARGB(255, 92, 26, 167),
            widthBorder: 3,
            opacity: 1,
            size: 25,
          ),
        ),
        Positioned(
          top: widget.constraints.maxHeight / 3.2,
          child: StarIconWidget(
            animationController: widget.animationController,
            translateX: -52,
            translateY: -234,
            color: const Color.fromARGB(255, 92, 26, 167),
            opacity: 1,
            width: 20,
            height: 20,
          ),
        ),
      ],
    );
  }
}
