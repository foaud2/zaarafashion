import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
     super.initState();
     Future.delayed(Duration(seconds: 5), () {
       Navigator.of(context).pushReplacementNamed('/on_boarding_screen');
     });
   }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [Color(0XFF1B80A1), Color(0xFF1B80A1)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            Container(
              margin: EdgeInsetsDirectional.only(bottom: 8),
              child: Text(
                'SkylarShion',
                style: GoogleFonts.inter(
                    fontSize: 47,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 46),

              child: Text(
                'Fashion App For All',
                style: GoogleFonts.inter(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Image(
              image: AssetImage('lib/modules/imges/fffff.png'),
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
