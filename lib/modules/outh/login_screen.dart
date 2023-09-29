import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaarafashion/widgest/app_elevated_button.dart';

import '../../widgest/app_text_fild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    Navigator.pushNamed(context, '/register_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search_screen');
            },
            icon: Icon(
              Icons.tune,
              color: Color(0xff272459),
              size: 30,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
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
        title: Text(
          'Log in',
          style: GoogleFonts.inter(
            fontSize: 33.sp,
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
              height: 48.h,
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
              height: 10.h,
            ),
            AppTextFild(
              errorText: _errorEmailValue,
              keybord: TextInputType.text,
              hint: 'Insert Email Address',
              controller: _emailTextEditingController,
              maxLength: null,
              minLines: null,
              expands: true,
              constraints: 56,
            ),
            SizedBox(
              height: 26.h,
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
              height: 10.h,
            ),
            AppTextFild(
              errorText: _errorpasswordValue,
              keybord: TextInputType.text,
              hint: 'Insert Password',
              controller: _passwordTextEditingController,
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
              height: 8.h,
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
              height: 20.h,
            ),
            RichText(
                text: TextSpan(
                    text: 'Don’t have any account?  ',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0XFF03141A)),
                    children: [
                  TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: 'Register',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0XFF03141A)),
                  )
                ])),
            SizedBox(
              height: 20.h,
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
                  'login',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFFFAFCFC)),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Or Log In With Social Account',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0XFF000000)),
            ),
            SizedBox(
              height: 16.h,
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
                          SizedBox(width: 8.w),
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
                            color: Colors.black,
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
      setStateErrorValue();

      return true;
    }
    setStateErrorValue();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text('Enter Required'),
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
        margin: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    return false;
  }

  void setStateErrorValue() {
    setState(() {
      _errorEmailValue =
          _emailTextEditingController.text.isEmpty ? 'Enter Email' : null;
      _errorpasswordValue =
          _passwordTextEditingController.text.isEmpty ? 'Enter password' : null;
    });
  }

  void login() {
    Navigator.pushNamed(context, '/profile_screen');
  }
}
