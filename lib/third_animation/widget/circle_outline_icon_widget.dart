import 'package:flutter/material.dart';

class CircleOutlineIconWidget extends StatefulWidget {
  final Color color;
  final double opacity;
  final double size;
  final double widthBorder;
  final double translateX;
  final double translateY;
  final AnimationController animationController;
  const CircleOutlineIconWidget({
    required this.color,
    required this.opacity,
    required this.size,
    required this.widthBorder,
    required this.animationController,
    required this.translateX,
    required this.translateY,
    Key? key,
  }) : super(key: key);

  @override
  State<CircleOutlineIconWidget> createState() =>
      _CircleOutlineIconWidgetState();
}

class _CircleOutlineIconWidgetState extends State<CircleOutlineIconWidget> {
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
        child: Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border:
                  Border.all(width: widget.widthBorder, color: widget.color),
            )),
      ),
    );
  }
}
