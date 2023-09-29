import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaarafashion/widgest/on_poarding_content.dart';
import '../../widgest/app_elevated_button.dart';
import '../../widgest/custam_page_inde.dart';

class OnBoardungScreen extends StatefulWidget {
  OnBoardungScreen({super.key});

  @override
  State<OnBoardungScreen> createState() => _OnBoardungScreenState();
}

class _OnBoardungScreenState extends State<OnBoardungScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Visibility(
                visible: _currentPage < 2,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signinand_login');
                  },
                  child: Text(
                    'START',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInBack);
                  },
                  child: Text(
                    'SKIP',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                physics: BouncingScrollPhysics(),
                onPageChanged: (int currentPage) {
                  debugPrint('currentPage $currentPage');
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
                controller: _pageController,
                children: [
                  OnBoardingContent(
                      supTitle:
                          'Buy anything you need anywhere and anytime with the guarantee of the best ',
                      title: 'Online Shopping',
                      imgname: 'Hotel+Booking-cuate'),
                  OnBoardingContent(
                    supTitle:
                        'we have very cheap prices with easy and simple transactions',
                    title: 'An Affordable price',
                    imgname: 'E-Wallet-bro',
                  ),
                  OnBoardingContent(
                    supTitle:
                        'We have service as quickly as possible and at any time of the day, 24-hour service',
                    title: 'An Affordable price',
                    imgname: 'Delivery+address-pana',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custampageindicator(
                  marginEnd: 8,
                  isCurrentIndex: _currentPage == 0,
                ),
                Custampageindicator(
                    marginEnd: 8, isCurrentIndex: _currentPage == 1),
                Custampageindicator(isCurrentIndex: _currentPage == 2),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Visibility(
              visible: _currentPage < 2,
              replacement: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(colors: [
                        Color(0xff1B80A1),
                        Color(0xff1B80A1),
                      ])),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(double.infinity, 48),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signinand_login');
                      },
                      child: Text(
                        'Getting Started',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      )),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: (Text('')),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
