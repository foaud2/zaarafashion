import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgest/app_text_fild.dart';
import '../setting/Profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _errorEmailValue;
  String? _errorpasswordValue;
  bool _obscure = true;

  @override
  void initState() {
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = register;
    super.initState();
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void register() {
    Navigator.pushNamed(context, '/Login_screen');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff03141A),
            size: 30,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/signinand_login');
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Register',
          style: GoogleFonts.inter(
            fontSize: 33,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 48,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(end: 280),
              child: Text(
                'Full Name:',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF03141A)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AppTextFild(
              hint: 'Insert Full Name',
             keybord: TextInputType.text,
              controller: _emailTextEditingController,
              maxLength: null,
              minLines: null,
              expands: true,
              constraints: 56,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(end: 240),
              child: Text(
                'Email Address:',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF03141A)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AppTextFild(
              hint: 'Insert Email Address',
              controller: _emailTextEditingController,
             keybord: TextInputType.text,
              maxLength: null,
              minLines: null,
              expands: true,
              constraints: 56,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(end: 275),
              child: Text(
                'Password:',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF03141A)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AppTextFild(
              hint: 'Insert Password',
              controller: _passwordTextEditingController,
              keybord: TextInputType.text,
              maxLength: 1,
              minLines: 1,
              expands: false,
              constraints: 56,
              obscure: _obscure,
              suffix: _obscure ? Icons.visibility : Icons.visibility_off,
              onPress: () {
                setState(() {
                  _obscure = !_obscure;
                });
              },
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0XFF03141A)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
                    text: 'Already have account?  ',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0XFF03141A)),
                    children: [
                  TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: 'Login',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0XFF03141A)),
                  )
                ])),
            SizedBox(
              height: 20,
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  gradient: LinearGradient(
                      colors: [Color(0XFF1B80A1), Color(0XFF1B80A1)])),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  minimumSize: Size(343, 45),
                ),
                onPressed: () {
                  ProfileScreen();
                },
                child: Text(
                  'Register',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFFFAFCFC)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Or Log In With Social Account',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0XFF000000)),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 17, left: 10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(161, 45),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.black,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Facebook',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 17, left: 10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(161, 45),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.g_mobiledata,
                            // تمثيل لخدمات Google على نظام Android
                            color: Colors.black, // لون الأيقونة
                          ),
                          SizedBox(width: 8),
                          Text(
                            'GOOGLE',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void ProfileScreen() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      return true;
    }
    setState(() {
      _errorEmailValue =
          _emailTextEditingController.text.isEmpty ? 'Enter Email' : null;
      _errorpasswordValue =
          _passwordTextEditingController.text.isEmpty ? 'Enter password' : null;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.red, content: Text('Enter Required')),
    );
    return false;
  }

  void login() {
    Navigator.pushNamed(context, '/profile_screen');
  }
}
