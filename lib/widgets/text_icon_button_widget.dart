import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    this.icon,
    required this.color,
    required this.background, this.asset,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final String? asset;
  final IconData? icon;
  final Color color, background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 11),
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          (icon != null) || (asset != null)
              ? const SizedBox(
            width: 8,
          ): const SizedBox(width: 0,),
          icon == null
              ? const SizedBox(
                  width: 0,
                )
              : Icon(
                  icon,
                  color: color,
                  size: 18,
                ),
          asset == null
              ? const SizedBox(
            width: 0,
          )
              : Image.asset(asset!, scale: 6,)
        ],
      ),
    );
  }
}
