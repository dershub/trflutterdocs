import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (itemBuilder, i) {
          return ListTile(
            title: Text("İçerik no: ${i + 1}"),
          );
        },
      ),
    );
  }
}
