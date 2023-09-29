import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppElevated extends StatelessWidget {
  const AppElevated({
    required this.title,
    required this.onPress,
    super.key,
  });

  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
          gradient:
              LinearGradient(colors: [Color(0XFF1B80A1), Color(0XFF1B80A1)])),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          minimumSize: Size(161, 45),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0XFFFAFCFC)),
        ),
      ),
    );
  }
}
