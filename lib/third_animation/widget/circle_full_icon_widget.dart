import 'package:flutter/material.dart';

class CircleFullIconWidget extends StatefulWidget {
  final Color color;
  final double opacity;
  final double size;
  final double translateX;
  final double translateY;
  final AnimationController animationController;

  const CircleFullIconWidget({
    required this.color,
    required this.opacity,
    required this.size,
    required this.animationController,
    required this.translateX,
    required this.translateY,
    Key? key,
  }) : super(key: key);

  @override
  State<CircleFullIconWidget> createState() => _CircleFullIconWidgetState();
}

class _CircleFullIconWidgetState extends State<CircleFullIconWidget> {
  late Animation explodeIconsTranslateW;
  late Animation explodeIconsTranslateH;

  @override
  void initState() {
    super.initState();

    explodeIconsTranslateW =
        Tween<double>(begin: 0, end: widget.translateX).animate(
      CurvedAnimation(
        parent: widget.animationController,
        curve: const Interval(0.25, 0.85, curve: Curves.ease),
      ),
    );

    explodeIconsTranslateH =
        Tween<double>(begin: 0, end: widget.translateY).animate(
      CurvedAnimation(
        parent: widget.animationController,
        curve: const Interval(0.25, 0.85, curve: Curves.ease),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.opacity,
      child: Transform.translate(
        offset:
            Offset(explodeIconsTranslateW.value, explodeIconsTranslateH.value),
        child: Icon(
          Icons.circle,
          color: widget.color,
          size: widget.size,
        ),
      ),
    );
  }
}
