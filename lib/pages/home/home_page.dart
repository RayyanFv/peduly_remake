import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peduly_remake/shared/theme.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, Rayyaan',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('Yuk donasi buat mereka yang membutuhkan!',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                  ),)
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/Profile.png'))
              ),
            )
          ],
        ),
      );
    }



    return ListView(
      children: [
        header(),

      ],
    );
  }
}
