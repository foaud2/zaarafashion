import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProdactCard extends StatelessWidget {
  const ProdactCard({

    required this.doTitle,
    required this.image,
    required this.prodactTitle,
    required this.tTitle,
    super.key,
  });

  final double image;
  final String prodactTitle;
  final double doTitle;
  final String tTitle;


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Color(0XFFFAFCFC),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(0),
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 0),
            color: Color(0xff000000).withOpacity(0.2),
            blurRadius: 80,
          ),
        ],),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(

            children: [
              Container(
                height: image,

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(0),
                  ),
                  image: DecorationImage(
                    image:
                    AssetImage(

                      'lib/modules/imges/asep-syaeful-bahri-XbHkXSPGXWY-unsplash (1).jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.bottomEnd,

                          colors: [
                            Color(0xffF7F7F7),
                            Color(0xffF7F7F7),


                          ]
                      )

                  ),
                  child: IconButton(onPressed: () {},
                      icon: Icon(Icons.favorite,)

                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              prodactTitle,
              style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff03141A)),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '\$$doTitle',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1B80A1)),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              tTitle,
              style: GoogleFonts.inter(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff03141A)),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '600+ item Sold Out',
              style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff03141A)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 12,
                    height: 12,
                    color: Color(0xff261D1E),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ClipOval(
                  child: Container(
                    width: 12,
                    height: 12,
                    color: Color(0xff6A4936),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ClipOval(
                  child: Container(
                    width: 12,
                    height: 12,
                    color: Color(0xffAEAEAE),

                  ),

                ),
              ],
            ),

          ),

        ],
      ),
    );
  }
}