import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckIconWidget extends StatelessWidget {
  final double machineCardSh;
  final double machineCardSw;
  final double iconCheckSize;
  const CheckIconWidget(
      {required this.machineCardSh,
      required this.machineCardSw,
      required this.iconCheckSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: machineCardSh,
      width: machineCardSw,
      child: SvgPicture.asset(
        'assets/images/check.svg',
        width: iconCheckSize,
        height: iconCheckSize,
        color: const Color(0xFF4513B3),
      ),
    );
  }
}
