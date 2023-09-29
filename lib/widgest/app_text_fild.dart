import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextFild extends StatelessWidget {
   AppTextFild({
    required this.hint,
    this.suffix,
    this.prefix,
    this.onPress,
    required this.controller,
    this.obscure = false,
    this.maxLength = 1,
    this.minLines = 1,
    this.expands = false,
    this.constraints = 0,
    this.errorText,
    this.filled = false,
    super.key,
    required this.keybord ,
  });

  final String hint;
  final IconData? suffix;
  final Widget? prefix;
  final void Function()? onPress;
  final TextEditingController controller;
  final bool obscure;
  final int? minLines;
  final int? maxLength;
  final bool expands;
  final double constraints;
  final String? errorText;
  final TextInputType keybord;
  bool filled;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.inter(
          fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF03141A)),
      obscureText: obscure,
      keyboardType: TextInputType.emailAddress,

      expands: false,
      decoration: InputDecoration(
        errorText: errorText,
        contentPadding:
            EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 12),
        constraints: BoxConstraints(maxHeight: constraints),
        suffixIcon: IconButton(onPressed: onPress, icon: Icon(suffix)),
        prefixIcon: prefix,
        hintText: hint,
        fillColor: Color(0xffDEE7EA),
        filled: filled,
        hintStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0XFF88999E),
        ),
        enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(

                width: 1.4)),
      ),
    );
  }
}
