import 'package:docs/cookbook/baris.dart';
import 'package:flutter/material.dart';

//////////Baslık ve Iconlar
class BasliklVeIcons extends StatelessWidget {
  const BasliklVeIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: BuyukYazi(
              text: "CookBook",
              size: 50,
            ),
          ),
          Wrap(
            spacing: -10,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.bug_report_outlined,
                    size: 20,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.pageview_outlined,
                    size: 20,
                  ),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
