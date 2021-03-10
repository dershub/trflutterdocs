import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  final bool contentsAcikMi;

  const Contents({Key key, @required this.contentsAcikMi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        children: [
          for (String title in contents['main']['contents'])
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  if (contentsAcikMi) Icon(Icons.circle),
                  Text(title),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

var contents = {
  'main': {
    'contents': [
      'Animasyon',
      'Tasarım',
      'Efektler',
      'Formlar',
      'Animasyon',
      'Tasarım',
      'Efektler',
      'Formlar',
      'Animasyon',
      'Tasarım',
      'Efektler',
      'Formlar',
      'Animasyon',
      'Tasarım',
      'Efektler',
      'Formlar',
      'Animasyon',
      'Tasarım',
      'Efektler',
      'Formlar'
    ],
    'onClick': ['animation']
  }
};
