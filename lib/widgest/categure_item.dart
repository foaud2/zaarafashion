import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.image,
    required this.titel,
    this.margin = 8,
    super.key,
  });

  final String image;
  final String titel;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 89,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          SizedBox(height: 7,),
          Text(
            titel,
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0XFF03141A),
                height: 1),
          ),

        ],
      ),
    );
  }
}
