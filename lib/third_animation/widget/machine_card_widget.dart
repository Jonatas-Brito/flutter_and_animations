import 'dart:ui';

import 'package:flutter/material.dart';

class MachineCardWidget extends StatelessWidget {
  final double machineCardSh;
  final double machineCardSw;
  final double machineCardRadius;
  final double machineCardChildPadding;
  final double machineCardPadding;

  const MachineCardWidget(
      {required this.machineCardSh,
      required this.machineCardSw,
      required this.machineCardPadding,
      required this.machineCardRadius,
      required this.machineCardChildPadding,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: machineCardSh,
      width: machineCardSw,
      child: Padding(
        padding: EdgeInsets.all(
          machineCardPadding,
        ),
        child: Container(
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(machineCardRadius),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(machineCardRadius),
                  ),
                  border: Border.all(
                    width: 4,
                    color: const Color.fromARGB(255, 255, 7, 181),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(machineCardChildPadding),
                  child: Container(
                    height: 195,
                    width: 245,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(machineCardRadius - 5),
                      ),
                      border: Border.all(
                        width: 4,
                        color: const Color.fromARGB(255, 92, 26, 167),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
