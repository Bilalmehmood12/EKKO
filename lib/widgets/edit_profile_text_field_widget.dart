import 'package:ekko/utils/color.dart';
import 'package:ekko/utils/dimensions.dart';
import 'package:flutter/material.dart';

class EditProfileTextField extends StatelessWidget {
  const EditProfileTextField({
    Key? key,
    required this.label,
    required this.text, required this.height,
  }) : super(key: key);

  final double height;
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                color:
                AppColors.primaryColor.withOpacity(0.7),
                fontWeight: FontWeight.w400,
                fontSize: 14),
          ),
          SizedBox(
            height: Dimensions.getHeight(40, height),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusColor: AppColors.primaryColor,

              ),
              initialValue: text,
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          Divider(thickness: 2, color: AppColors.primaryColor.withOpacity(0.3),),
          // SizedBox(height: Dimensions.getHeight(15, height),),
        ],
      ),
    );
  }
}
