import 'package:flutter/material.dart';

class ButtonNextPage extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? fontColor;
  const ButtonNextPage({
    this.onPressed,
    this.fontColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: onPressed,
        child: Text(
          "Next Page",
          style: TextStyle(color: fontColor ?? const Color(0xffE62E4D)),
        ),
      ),
    );
  }
}
