import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: ListView.builder(
        itemCount: contents['main']['contents'].length,
        itemBuilder: (itemBuilder, i) {
          return ListTile(
            title: Text("${i + 1}. ${contents['main']['contents'][i]}"),
          );
        },
      ),
    );
  }
}

var contents = {
  'main': {
    'contents': ['Animasyon', 'Tasarım', 'Efektler', 'Formlar'],
    'onClick': []
  }
};
