import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_and_animations/core/assets/images/app_images.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animationRotate;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    animationRotate =
        Tween(begin: math.pi, end: math.pi * 2).animate(animationController);

    animationController.forward();

    animationController.addStatusListener((status) {
      if (animationController.isCompleted) {
        animationController.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    File file = File(AppImages.lottieSync);
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              child: LottieBuilder.asset(AppImages.lottieSync),
            ),
            // Container(
            //   color: Colors.transparent,
            //   child: LottieBuilder.file(file),
            // ),
            // Container(
            //   color: Colors.transparent,
            //   child: LottieBuilder.network(
            //       filterQuality: FilterQuality.high,
            //       fit: BoxFit.cover,
            //       'https://assets6.lottiefiles.com/packages/lf20_I1evLNeClw.json'),
            // ),
            const SizedBox(height: 30),
            const Text(
              "Sincronizando base de dados",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFF2A2A56),
              ),
            ),
            // Positioned(
            //     top: 600,
            //     left: MediaQuery.of(context).size.width / 4,
            //     child: Container(
            //         alignment: Alignment.topCenter,
            //         height: 200,
            //         width: 200,
            //         child: Stack(
            //           alignment: Alignment.center,
            //           children: [
            //             Positioned(
            //               top: 0,
            //               child: SizedBox(
            //                 width: 200,
            //                 child: SvgPicture.asset(RdoIcons.cloud),
            //               ),
            //             ),
            //             Positioned(
            //               bottom: 0,
            //               left: 82,
            //               child: SizedBox(
            //                 width: 40,
            //                 child: AnimatedBuilder(
            //                     animation: animationController,
            //                     builder: (context, _) {
            //                       return Transform.rotate(
            //                           angle: animationRotate.value,
            //                           child: SvgPicture.asset(RdoIcons.arrows));
            //                     }),
            //               ),
            //             ),
            //           ],
            //         ))),
          ],
        ),
      ),
    );
  }
}
