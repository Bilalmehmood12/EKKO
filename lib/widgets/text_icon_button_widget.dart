import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.icon,
    required this.color,
    required this.background,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final IconData? icon;
  final Color color, background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.getWidth(185, width),
      height: Dimensions.getHeight(55, height),
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 5,
          ),
          icon == null
              ? const SizedBox(
                  width: 0,
                )
              : Icon(
                  icon,
                  color: color,
                  size: 18,
                )
        ],
      ),
    );
  }
}
