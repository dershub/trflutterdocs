import 'package:docs/contents.dart';
import 'package:docs/cookbook/cookbook_main.dart';
import 'package:docs/left_menu.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double genislik = MediaQuery.of(context).size.width;
    final bool drawerAcilsinMi = genislik < 600;
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
          ],
        ),
      ),
      body: Row(
        children: [
          if (!drawerAcilsinMi) Expanded(child: LeftMenu()),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text("başlık menü"),
                if (genislik < 700) Expanded(child: Contents()),
                Expanded(child: CookbookMain()),
              ],
            ),
          ),
          if (genislik >= 700) Expanded(child: Contents()),
        ],
      ),
      drawer: drawerAcilsinMi ? Drawer(child: LeftMenu()) : null,
    );
  }
}
