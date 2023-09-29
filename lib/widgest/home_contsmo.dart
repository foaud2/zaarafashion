import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Contsmo extends StatelessWidget {
  const Home_Contsmo({
    required this.titil,
    required this.size1,
    required this.size2,

    super.key,
  });

  final String titil;
  final double size1;
  final double size2;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size1,
          width: size2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(0),
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            image: DecorationImage(
              image: AssetImage(
                'lib/modules/imges/asep-syaeful-bahri-XbHkXSPGXWY-unsplash (1).jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 55, bottom: 16, left: 16, right: 24),
          child: Text(
            titil,
            style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xffFAFCFC)),
          ),
        ),


      ],
    );
  }
}
