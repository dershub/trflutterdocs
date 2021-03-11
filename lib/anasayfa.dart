import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'anasayfa/baslik_alti.dart';
import 'anasayfa/baslik_ve_icons.dart';
import 'contents.dart';
import 'cookbook/baris.dart';
import 'left_menu.dart';

const List a1 = const [1, 2, 3];
const List a2 = const [1, 2, 3];

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double genislik = MediaQuery.of(context).size.width;
    final bool drawerAcilsinMi = genislik < 600;
    final bool contentsAcikMi = genislik < 700;

    print("a1 eşittir a2, ${a1 == a2}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              height: 65,
              width: 130,
              child: Image.asset('assets/flutterlockup.png'),
            ),
            Text("a1 eşittir a2, ${a1 == a2}"),
          ],
        ),
      ),
      body: Row(
        children: [
          if (!drawerAcilsinMi) Expanded(child: LeftMenu()),
          Expanded(
            flex: 2,
            child: Scrollbar(
              child: ListView(
                children: [
                  Column(
                    children: [
                      BasliklVeIcons(),
                      BaslikAlti(),
                    ],
                  ),
                  /////CookBook ana başlığının yazılarının olduğu eyr
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 35),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Color(0xFF4A4A4A),
                        ),
                        text:
                            'This cookbook contains recipes that demonstrate how to solve common problems while writing Flutter apps. Each recipe is self-',
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  ' contained and can be used as a reference to help you build up an application.'),
                        ],
                      ),
                    ),
                  ),
                  if (contentsAcikMi) Contents(contentsAcikMi: contentsAcikMi),
                  CookbookMain(),
                ],
              ),
            ),
          ),
          if (!contentsAcikMi)
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Contents(contentsAcikMi: contentsAcikMi),
                ),
              ),
            ),
        ],
      ),
      drawer: drawerAcilsinMi ? Drawer(child: LeftMenu()) : null,
    );
  }
}
