import 'package:flutter/material.dart';

class EditorPage extends StatefulWidget {
  @override
  _EditorPageState createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  TextEditingController _controller = TextEditingController();
  String _ozellikler = "";
  String _tumMetin = "";
  String _anlikMetin = "";
  List<TextSpan> _metinler = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editor Page')),
      body: Column(
        children: [
          Expanded(child: _olusturulanMetinler),
          _ozelliklerBari,
          _textField,
        ],
      ),
    );
  }

  Widget get _olusturulanMetinler => Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              height: double.maxFinite,
              child: _buildRichText(_metinler),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: double.maxFinite,
              child: Text(_tumMetin),
            ),
          ),
        ],
      );

  Widget _buildRichText(List<TextSpan> _list) {
    return RichText(
      text: TextSpan(
        text: 'Metin:  ',
        children: [
          for (int i = 0; i < _list.length; i++) _list[i],
        ],
      ),
    );
  }

  TextSpan _metin(String _metin) {
    bool _isBold = _ozellikler.contains('bold');
    bool _isItalic = _ozellikler.contains('italic');
    return TextSpan(
      text: _metin,
      style: TextStyle(
        fontWeight: _isBold ? FontWeight.bold : null,
        fontStyle: _isItalic ? FontStyle.italic : null,
      ),
    );
  }

  Widget get _ozelliklerBari => Row(
        children: [
          SizedBox(width: 12),
          _gonder,
          SizedBox(width: 12),
          _ozellikBold,
          SizedBox(width: 12),
          _ozellikItalic,
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text('Özellikler: $_ozellikler'),
          ),
        ],
      );

  Widget get _gonder => ElevatedButton(
        onPressed: () {
          _tumMetin += " ${_controller.text}";
          _anlikMetin = " ${_controller.text}";
          if (_anlikMetin.trim().isNotEmpty) {
            _controller.text = "";
            _metinler.add(_metin(_anlikMetin));
          }
          setState(() {});
        },
        child: Text("Gönder!"),
      );

  Widget get _ozellikBold => ElevatedButton(
      child: Text('B'),
      onPressed: () {
        _tumMetin += " ${_controller.text}";
        _anlikMetin = " ${_controller.text}";
        if (_anlikMetin.isNotEmpty) {
          _controller.text = "";
          _metinler.add(_metin(_anlikMetin));
          _anlikMetin = "";
        }
        if (_ozellikler.contains('bold')) {
          _ozellikler = _ozellikler.replaceAll('bold', ' ');
          print("bold kaldırıldı");
        } else {
          _ozellikler += 'bold';
        }
        setState(() {});
      });

  Widget get _ozellikItalic => ElevatedButton(
      child: Text('I'),
      onPressed: () {
        _tumMetin += " ${_controller.text}";
        _anlikMetin = " ${_controller.text}";
        if (_anlikMetin.isNotEmpty) {
          _controller.text = "";
          _metinler.add(_metin(_anlikMetin));

          _anlikMetin = "";
        }
        if (_ozellikler.contains('italic')) {
          _ozellikler = _ozellikler.replaceAll('italic', '');
        } else {
          _ozellikler += 'italic';
        }
        setState(() {});
      });

  Widget get _textField => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 120),
          child: IntrinsicHeight(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              maxLines: null,
              expands: true,
            ),
          ),
        ),
      );
}
