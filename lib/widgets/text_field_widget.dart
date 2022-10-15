import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

  const CustomTextField({
    Key? key,
    required this.width,
    required this.height,
    this.lead,
    this.action,
    required this.text,
    this.maxLine, this.obscureText,
  }) : super(key: key);

  final double width;
  final double height;
  final String? lead, action;
  final String text;
  final int? maxLine;
  final bool? obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool? obscureText;
  bool? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.getWidth(335, widget.width),
      height: Dimensions.getHeight(widget.maxLine != null ? 115: 55, widget.height),
      decoration: BoxDecoration(
          color: AppColors.tertiaryColor,
          borderRadius: (widget.lead == null) && (widget.action == null) ? BorderRadius.circular(14): BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 3), blurRadius: 3, spreadRadius: 2,
                color: AppColors.secondaryColor.withOpacity(0.3)
            )
          ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: (widget.lead != null)&&(widget.action != null) ? 0: 15),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: widget.text,
            hintStyle: TextStyle(
              color: AppColors.primaryColor.withOpacity(0.7),
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            prefixIcon: widget.lead != null ? SizedBox(
                width: 32,
                height: 32,
                child: Image.asset(widget.lead!, scale: 5,)
            ): null,
            suffixIcon: widget.action != null ? GestureDetector(
              onTap: widget.obscureText == true ? () => setState(() {
                obscureText = obscureText == true? false: true;
                icon = icon == true? false: true;
              }):() {},
              child: SizedBox(
                width: 32,
                height: 32,
                child: icon == false ? Image.asset(widget.action!, scale: 4,) : Icon(Icons.remove_red_eye, color: AppColors.primaryColor,),
              ),
            ): null,
            border: InputBorder.none,
          ),
          obscuringCharacter: '*',
          obscureText: obscureText ?? false,
          maxLines: widget.maxLine ?? 1,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText ?? false;
    icon = widget.obscureText ?? false;
  }
}
