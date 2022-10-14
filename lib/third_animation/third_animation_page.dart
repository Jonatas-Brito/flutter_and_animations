import 'package:flutter/material.dart';
import 'package:flutter_and_animations/third_animation/widget/check_icon_widget.dart';
import 'package:flutter_and_animations/third_animation/widget/credit_card_widget.dart';
import 'package:flutter_and_animations/third_animation/widget/machine_card_widget.dart';
import 'package:flutter_and_animations/third_animation/widget/stack_explode_icons_widget.dart';

import '../widget/button_next_page_widget.dart';

class ThirdAnimationPage extends StatefulWidget {
  const ThirdAnimationPage({Key? key}) : super(key: key);

  @override
  State<ThirdAnimationPage> createState() => _ThirdAnimationPageState();
}

class _ThirdAnimationPageState extends State<ThirdAnimationPage> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation creditCardToDown;
  late Animation creditCardLeftToRight;
  late Animation creditCartRotate;
  late Animation secondCardToUp;
  late Animation overlappingCreditCardLeftToRight;
  late Animation machineCardSh;
  late Animation machineCardSw;
  late Animation machineCardRadius;
  late Animation machineCardPadding;
  late Animation machineCardChildPadding;
  late Animation iconCheckSize;
  late Animation explodeIconsOpacity;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    );

    creditCardToDown = Tween<double>(begin: 50.0, end: 250.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0, 0.1, curve: Curves.fastOutSlowIn),
      ),
    );

    creditCardLeftToRight = Tween<double>(begin: 150.0, end: 50.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0, 0.1, curve: Curves.fastOutSlowIn),
      ),
    );

    creditCartRotate = Tween<double>(begin: -0.5, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0, 0.1, curve: Curves.fastOutSlowIn),
      ),
    );

    overlappingCreditCardLeftToRight = Tween<double>(begin: -250.0, end: 250.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.125, 0.3, curve: Curves.fastOutSlowIn),
      ),
    );

    machineCardSh = Tween<double>(begin: 100.0, end: 180.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.25, 0.3, curve: Curves.fastOutSlowIn),
      ),
    );

    machineCardSw = Tween<double>(begin: 250.0, end: 180.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.25, 0.3, curve: Curves.fastOutSlowIn),
      ),
    );

    machineCardRadius = Tween<double>(begin: 35.0, end: 200.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.25, 0.275, curve: Curves.fastOutSlowIn),
      ),
    );

    machineCardPadding = Tween<double>(begin: 0.0, end: 20.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.35, 0.385, curve: Curves.fastLinearToSlowEaseIn),
      ),
    );

    machineCardChildPadding = Tween<double>(begin: 0.0, end: 20.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.25, 0.275, curve: Curves.fastOutSlowIn),
      ),
    );

    secondCardToUp = Tween<double>(begin: 300.0, end: 100.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.25, 0.35, curve: Curves.fastOutSlowIn),
      ),
    );

    iconCheckSize = Tween<double>(begin: 0.0, end: 50.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.25, 0.275, curve: Curves.fastLinearToSlowEaseIn),
      ),
    );

    explodeIconsOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.35, 0.355, curve: Curves.fastLinearToSlowEaseIn),
      ),
    );

    animationController.addListener(() {
      if (animationController.value > 0.1) {
        creditCardLeftToRight = Tween<double>(begin: 50.0, end: 320.0).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.1, 0.3, curve: Curves.fastOutSlowIn),
          ),
        );
      }

      if (animationController.value > 0.35) {
        iconCheckSize = Tween<double>(begin: 50.0, end: 80.0).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.35, 0.385, curve: Curves.fastOutSlowIn),
          ),
        );
      }

      if (animationController.value > 0.4) {
        explodeIconsOpacity = Tween<double>(begin: 1.0, end: 0.0).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.4, 0.85, curve: Curves.fastLinearToSlowEaseIn),
          ),
        );
      }
      if (animationController.value > 0.385) {
        machineCardPadding = Tween<double>(begin: 20.0, end: 5.0).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.385, 0.415, curve: Curves.fastLinearToSlowEaseIn),
          ),
        );

        iconCheckSize = Tween<double>(begin: 80.0, end: 65.0).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.385, 0.415, curve: Curves.fastLinearToSlowEaseIn),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Color.fromARGB(255, 255, 7, 181),
        ),
        title: const Text(
          'Third animation',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 7, 181),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          ButtonNextPage(
            fontColor: const Color.fromARGB(255, 255, 7, 181),
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              return SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: explodeIconsOpacity.value,
                      child: StackExplodeIcons(constraints: constraints, animationController: animationController),
                    ),
                    Positioned(
                      top: creditCardToDown.value,
                      left: creditCardLeftToRight.value,
                      child: Transform.rotate(
                        angle: creditCartRotate.value,
                        child: const CreditCardWidget(),
                      ),
                    ),
                    Positioned(
                      top: 240,
                      left: overlappingCreditCardLeftToRight.value,
                      child: Container(
                        height: 150,
                        width: 230,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: secondCardToUp.value,
                      child: MachineCardWidget(
                        machineCardSh: machineCardSh.value,
                        machineCardSw: machineCardSw.value,
                        machineCardPadding: machineCardPadding.value,
                        machineCardRadius: machineCardRadius.value,
                        machineCardChildPadding: machineCardChildPadding.value,
                      ),
                    ),
                    Positioned(
                      top: secondCardToUp.value,
                      child: CheckIconWidget(
                        iconCheckSize: iconCheckSize.value,
                        machineCardSh: machineCardSh.value,
                        machineCardSw: machineCardSw.value,
                      ),
                    ),
                    Positioned(
                      top: 370,
                      child: Container(
                        height: 200,
                        width: 300,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      right: 30,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 255, 7, 181),
                        )),
                        onPressed: () {
                          if (animationController.isCompleted) {
                            animationController.reverse();
                          } else {
                            animationController.forward();
                          }
                        },
                        child: const Text('Run animation'),
                      ),
                    ),
                  ],
                ),
              );
            });
      }),
    );
  }
}
