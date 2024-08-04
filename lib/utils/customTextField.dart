import 'package:flutter/material.dart';


import 'customColors.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key,
    this.controller,
    this.maxLines = 1,
    this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    // this.isObscureText,
  });
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;
  final keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  // final bool? isObscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        // obscureText: isObscureText!,
        keyboardType: keyboardType,
        cursorColor: CustomColors.textColor,
        controller: controller,
        maxLines: maxLines,
        style: const TextStyle(color: CustomColors.textColor),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            filled: true,
            // fillColor: CustomColors.textColor,
            focusedBorder: getInputBorder,
            enabledBorder: getInputBorder,
            border: getInputBorder,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: const TextStyle(
                color: CustomColors.containerColor,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none);
  }
}
