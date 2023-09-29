import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home_Secyion extends StatelessWidget {
  const Home_Secyion({
    required this.title,

    super.key,

  });
  final String title;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000)),
        ),
        SizedBox(
          width: 120,
        ),
        Text(
          'View All',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xff03141A)),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xff03141A),
              size: 16,
            ))
      ],
    );
  }
}