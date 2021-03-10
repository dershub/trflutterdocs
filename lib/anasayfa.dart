import 'package:docs/contents.dart';
import 'package:docs/cookbook/cookbook_main.dart';
import 'package:docs/left_menu.dart';
import 'package:flutter/material.dart';

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
                  Text("başlık menü"),
                  if (genislik < 700) Contents(contentsAcikMi: contentsAcikMi),
                  CookbookMain(),
                ],
              ),
            ),
          ),
          if (genislik >= 700)
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
