import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zaarafashion/modules/launch/on_boarding_screen.dart';
import 'package:zaarafashion/modules/launch/splash_screen.dart';

import 'modules/categories/search_screen.dart';
import 'modules/home/home_screne.dart';
import 'modules/outh/login_screen.dart';
import 'modules/outh/register.dart';
import 'modules/outh/signinandlogin.dart';
import 'modules/setting/Profile.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute:'/splash_screen' ,
          routes: {
            '/splash_screen':(context) =>  SplashScreen(),
            '/on_boarding_screen':(context) =>  OnBoardungScreen(),
            '/Login_screen':(context) =>  LoginScreen(),
            '/register_screen':(context) =>  RegisterScreen(),
            '/profile_screen':(context) =>  ProfileScreen(),
            '/search_screen':(context) =>  SearchScreen(),
            '/signinand_login':(context) =>  SignInAndLogin(),
            '/home_screne':(context) =>  HomeScrene(),


          },
        );
      }
    ) ;
  }
}
