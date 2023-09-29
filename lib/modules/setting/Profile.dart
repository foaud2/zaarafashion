import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgest/custam_profail.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile ',
          style: GoogleFonts.inter(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color(0xff03141A)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search_screen');
              },
              icon: Icon(
                Icons.chat_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 131,
            ),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'lib/modules/imges/matheus-ferrero-W7b3eDUb_2I-unsplash.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                'Foaud Eleila',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 22),
              ),
              Text(
                'Flutter Developer',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w300, fontSize: 19),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: [
                SizedBox(height: 10),
                CustamProfailList(
                  title: 'My Profile ',
                  leading: Icons.account_circle_outlined,
                  onPress: () {},
                  trailing: Icons.arrow_forward_ios_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
                CustamProfailList(
                  title: 'My Address',
                  leading: Icons.location_on_outlined,
                  onPress: () {},
                  trailing: Icons.arrow_forward_ios_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
                CustamProfailList(
                  title: 'Notification',
                  leading: Icons.notifications_none_outlined,
                  onPress: () {},
                  trailing: Icons.arrow_forward_ios_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
                CustamProfailList(
                  title: 'Help Center',
                  leading: Icons.verified_user_outlined,
                  onPress: () {},
                  trailing: Icons.arrow_forward_ios_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
                CustamProfailList(
                  title: 'LOGOUT',
                  leading: Icons.logout_outlined,
                  onPress: () {

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
