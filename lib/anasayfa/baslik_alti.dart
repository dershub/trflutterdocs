import 'package:docs/cookbook/baris.dart';
import 'package:flutter/material.dart';

/////////////////////Widgetler////////////////////
class BaslikAlti extends StatelessWidget {
  const BaslikAlti({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          BlueTextButton(
            onPressed: () {},
            text: "Docs",
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.black54,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "CookBook",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ))
        ],
      ),
    );
  }
}
