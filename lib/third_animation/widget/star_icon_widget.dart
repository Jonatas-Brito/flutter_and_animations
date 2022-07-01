import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarIconWidget extends StatefulWidget {
  final Color color;
  final double opacity;
  final double width;
  final double height;
  final double translateX;
  final double translateY;
  final AnimationController animationController;

  const StarIconWidget({
    required this.color,
    required this.opacity,
    required this.width,
    required this.height,
    required this.animationController,
    required this.translateX,
    required this.translateY,
    Key? key,
  }) : super(key: key);

  @override
  State<StarIconWidget> createState() => _StarIconWidgetState();
}

class _StarIconWidgetState extends State<StarIconWidget> {
  late Animation explodeIconsTranslateW;
  late Animation explodeIconsTranslateH;
  late Animation explodeIconsRotate;

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

    explodeIconsRotate = Tween<double>(begin: 0, end: 10).animate(
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
        child: Transform.rotate(
          angle: explodeIconsRotate.value,
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: SvgPicture.asset(
              'assets/images/star.svg',
              color: widget.color,
            ),
          ),
        ),
      ),
    );
  }
}
