import 'package:flutter/material.dart';

class DotProgressAnimation extends StatefulWidget {
  const DotProgressAnimation({
    this.iconColor = Colors.red,
    this.maxSizeIcon = 18,
    this.minSizeIcon = 10,
    this.spaceBetweenIcons = 3,
    this.animationDuration = const Duration(milliseconds: 1500),
    this.animationController,
    super.key,
  });

  final Color iconColor;
  final double maxSizeIcon;
  final double minSizeIcon;
  final double spaceBetweenIcons;
  final Duration animationDuration;
  final void Function(AnimationController)? animationController;

  @override
  State<DotProgressAnimation> createState() => _DotProgressAnimationState();
}

class _DotProgressAnimationState extends State<DotProgressAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animateCircleOne;
  late Animation animateCircleTwo;
  late Animation animateCircleThree;
  late Animation animate;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: widget.animationDuration);

    animateCircleOne = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween:
              Tween<double>(begin: widget.minSizeIcon, end: widget.maxSizeIcon),
          weight: 30.0,
        ),
        TweenSequenceItem<double>(
          tween:
              Tween<double>(begin: widget.maxSizeIcon, end: widget.minSizeIcon),
          weight: 30.0,
        ),
      ],
    ).animate(CurvedAnimation(
        parent: animationController, curve: const Interval(0, 0.3)));

    animateCircleTwo = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween:
              Tween<double>(begin: widget.minSizeIcon, end: widget.maxSizeIcon),
          weight: 30.0,
        ),
        TweenSequenceItem<double>(
          tween:
              Tween<double>(begin: widget.maxSizeIcon, end: widget.minSizeIcon),
          weight: 30.0,
        ),
      ],
    ).animate(CurvedAnimation(
        parent: animationController, curve: const Interval(0.15, 0.5)));

    animateCircleThree = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween:
              Tween<double>(begin: widget.minSizeIcon, end: widget.maxSizeIcon),
          weight: 30.0,
        ),
        TweenSequenceItem<double>(
          tween:
              Tween<double>(begin: widget.maxSizeIcon, end: widget.minSizeIcon),
          weight: 30.0,
        ),
      ],
    ).animate(CurvedAnimation(
        parent: animationController, curve: const Interval(0.35, 0.7)));

    if (widget.animationController != null) {
      widget.animationController!(animationController);
    }

    animationController.addListener(() {
      if (animationController.isCompleted) {
        animationController.reset();
        animationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return SizedBox(
            height: widget.maxSizeIcon,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  color: widget.iconColor,
                  size: animateCircleOne.value,
                ),
                SizedBox(width: widget.spaceBetweenIcons),
                Icon(
                  Icons.circle,
                  color: widget.iconColor,
                  size: animateCircleTwo.value,
                ),
                SizedBox(width: widget.spaceBetweenIcons),
                Icon(
                  Icons.circle,
                  color: widget.iconColor,
                  size: animateCircleThree.value,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
