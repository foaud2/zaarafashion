import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaarafashion/widgest/categure_item.dart';
import 'package:zaarafashion/widgest/home_contsmo.dart';
import 'package:zaarafashion/widgest/home_sceyion.dart';

import '../../widgest/app_text_fild.dart';
import '../../widgest/product_card.dart';

class HomeScrene extends StatefulWidget {
  const HomeScrene({super.key});

  @override
  State<HomeScrene> createState() => _HomeScreneState();
}

class _HomeScreneState extends State<HomeScrene> {
  late TextEditingController _searchTextEditingController;

  @override
  void initState() {
    super.initState();
    _searchTextEditingController = TextEditingController();
  }
  @override

  void deactivate() {
    _searchTextEditingController.dispose();
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: AppTextFild(
          filled: true,
          hint: 'Search',
          keybord: TextInputType.text,
          controller: _searchTextEditingController,
          prefix: Icon(
            Icons.search_outlined,
            color: Color(0XFFAEAEB2),
          ),
          minLines: null,
          maxLength: null,
          expands: true,
          constraints: 44,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home_screne');
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff272459),
            size: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Login_screen');
            },
            icon: Icon(
              Icons.tune,
              color: Color(0xff272459),
              size: 30,
            ),
          )
        ],
      ),
      
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 275,
              minWidth: 375,
            ),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 220 / 335,
                    crossAxisCount: 1,
                     mainAxisSpacing:5
                ),
                itemBuilder: (context, index) {
                  return
          Container(
            height: 275,
            width: 375,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'lib/modules/imges/asep-syaeful-bahri-XbHkXSPGXWY-unsplash (1).jpg',
                ),
                fit: BoxFit.cover,


              )
            ),
          );
    }),
  ),


SizedBox(height:32 ,),


          Text(
            'Best Seller In This Season',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 23,
                color: Color(0XFF000000)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Get to know about most popular items',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0XFF000000)),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0,
            child: Container(
              width: 375,
              height: 103,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xff88999E),
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Color(0xff88999E),
                    width: 1,
                  ),
                ),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 97),
                child: GridView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (context, index) {
                      return CategoryItem(
                        image:
                            'lib/modules/imges/matheus-ferrero-W7b3eDUb_2I-unsplash.jpg',
                        titel: 'Woman',
                      );
                    }),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Home_Secyion(title: 'Seasonal Pick'),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 442,
              minWidth: 255,
            ),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 255 / 150,
                    crossAxisCount: 1,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return ProdactCard(
                    doTitle: 100,
                    prodactTitle: 'Woman',
                    tTitle: 'T-Shirt 4',
                    image: 300,
                  );
                }),
          ),
          SizedBox(
            height: 36,
          ),
          Container(
            height: 1, // ارتفاع الخط
            color: Colors.black, // لون الخط
          ),
          SizedBox(
            height: 8,
          ),
          Home_Secyion(title: 'Up to 60% Off'),
          SizedBox(
            height: 16,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 88,
              minWidth: 255,
            ),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 255 / 750,
                    crossAxisCount: 1,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Home_Contsmo(
                    titil: 'Special Discount Up to 60% Off!',
                    size1: 88,
                    size2: 255,
                  );
                }),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            height: 1, // ارتفاع الخط
            color: Colors.black, // لون الخط
          ),
          Home_Secyion(title: 'New Arrival    '),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 220,
              minWidth: 335,
            ),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 220 / 335,
                    crossAxisCount: 1,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 220,
                        width: 335,
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
                        padding: const EdgeInsets.only(
                            top: 147, bottom:54, left: 16, right: 207),
                        child: Text(
                          'New Arrival',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 175, bottom: 16, left: 16, right: 16),
                        child: Text(
                          'Introducing the new elegant and glamour outfitup to 15% off',
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ],
                  );
                }
                ),
          ),
          SizedBox(height: 70,),
          Container(
            height: 1, // ارتفاع الخط
            color: Colors.black, // لون الخط
          ),
          Home_Secyion(title: 'Up to 35% Off'),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 442,
              minWidth: 255,
            ),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 255 / 150,
                    crossAxisCount: 1,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return ProdactCard(
                    doTitle: 100,
                    prodactTitle: 'Woman',
                    tTitle: 'T-Shirt 4',
                    image: 300,
                  );
                }),
          ),
          SizedBox(height: 100,)

        ],
      ),
    );
  }
}
