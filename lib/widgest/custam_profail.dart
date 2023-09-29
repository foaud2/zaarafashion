import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustamProfailList extends StatelessWidget {
  const CustamProfailList({
    required this.title,
    this.trailing,
    required this.leading,
    required this.onPress,
    super.key,
  });

  final IconData leading;
  final IconData? trailing;
  final String title;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0XFFE5E5E5), borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Container(
            padding: EdgeInsetsDirectional.all(8),
            decoration: BoxDecoration(
                color: Color(0xff1A6782).withOpacity(0.4),
                borderRadius: BorderRadius.circular(4)),
            child: Icon(
              leading,
              color: Color(0xff1A6782),
            )),
        trailing: IconButton(
            onPressed: onPress,
            icon: Icon(
              trailing,
              color: Color(0xff03141A),
              size: 24,
            )),
        title: Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 16,
              color: Color(0xff03141A),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
