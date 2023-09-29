import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaarafashion/widgest/app_text_fild.dart';
import 'package:zaarafashion/widgest/product_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 0, right: 100, top: 16),
            child: Text(
              'Woman T-Shirt',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 33,
                color: Color(0xff03141A),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 420,
                    height: 49,
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
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Related',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff03141A),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Newest',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff03141A),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Popular',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff03141A),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Price',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff03141A),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Color(0xff03141A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: 99,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            'Woman',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff03141A),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: 99,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Cardigan',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff03141A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: GridView(
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 16),
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 15,
                  childAspectRatio: 167 / 347),
              children: [
                ProdactCard(
                  doTitle: 100,
                  prodactTitle: 'Woman',
                  tTitle: 'T-Shirt 1',
                  image: 220,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF1A6782),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 0),
                          color: Color(0xff000000).withOpacity(0.2)),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 220,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(0),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  'lib/modules/imges/alessia-marusova-6LC0LD01D4E-unsplash.jpg',
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
                                        Color(0xff1B80A1),
                                        Color(0xff1B80A1),
                                      ])),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  )),
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
                          'Woman',
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFAFCFC)),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          '\$50',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFAFCFC)),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'T-Shirt 2',
                          style: GoogleFonts.inter(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFAFCFC)),
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
                              color: Color(0xffFAFCFC)),
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
                            SizedBox(
                              width: 10,
                            ),
                            ClipOval(
                              child: Container(
                                width: 12,
                                height: 12,
                                color: Color(0xffFAFCFC),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ProdactCard(
                  doTitle: 100,
                  prodactTitle: 'Woman',
                  tTitle: 'T-Shirt 3',
                  image: 220,
                ),
                ProdactCard(
                  doTitle: 100,
                  prodactTitle: 'Woman',
                  tTitle: 'T-Shirt 4',
                  image: 220,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
