import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    required this.supTitle,
    required this.title,
    required this.imgname,
    super.key,
  });

  final String imgname;
  final String title;
  final String supTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: AlignmentDirectional.centerEnd,
        ),
        Image(image: AssetImage('lib/modules/imges/$imgname.svg.png')),
        SizedBox(height: 10),
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0XFF272459)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            supTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 16, color: Color(0XFF8A8A8E)),
          ),
        ),
        SizedBox(
          height: 90,
        )
      ],
    );
  }
}
