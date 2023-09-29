import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInAndLogin extends StatefulWidget {
  const SignInAndLogin({Key? key}) : super(key: key);

  @override
  State<SignInAndLogin> createState() => _SignInAndLoginState();
}

class _SignInAndLoginState extends State<SignInAndLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/modules/imges/1.a Onboarding Get Started Screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 280),
              Text(
                'Up to Date',
                style: GoogleFonts.inter(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFFFAFCFC),
                ),
              ),
              SizedBox(height: 0),
              Text(
                'Fashion',
                style: GoogleFonts.inter(
                  fontSize: 58,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFFFAFCFC),
                ),
              ),
              SizedBox(height: 35),
              Text(
                'Keep trendy with every new',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFFFAFCFC),
                ),
              ),
              Text(
                'exclusive product!',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFFFAFCFC),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 70,
              ),
              Card(
                margin: EdgeInsetsDirectional.only(start: 20, end: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  side: BorderSide(color: Color(0XFFFAFCFC), width: 3),
                ),
                color: Colors.transparent,
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'GET STARTED',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFFAFCFC),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 13, left: 20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        gradient: LinearGradient(
                            colors: [Color(0XFF1B80A1), Color(0XFF1B80A1)]),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          minimumSize: Size(161, 45),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/register_screen');
                        },
                        child: Text(
                          'REGISTER',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFFFAFCFC),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 13),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        gradient: LinearGradient(
                            colors: [Color(0XFF1B80A1), Color(0XFF1B80A1)]),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          minimumSize: Size(161, 45),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/Login_screen');
                        },
                        child: Text(
                          'LOG IN',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFFFAFCFC),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
