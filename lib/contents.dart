import 'package:docs/models/contents_title_item.dart';
import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  final bool contentsAcikMi;

  const Contents({Key key, @required this.contentsAcikMi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20, bottom: 8),
              child: Text(
                'İçerikler',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ],
        ),
        for (ContentsTitleItem content in contents)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if (contentsAcikMi)
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Colors.black87,
                  ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () => print(content.rota),
                  child: Text(content.title),
                  focusNode: FocusNode(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
