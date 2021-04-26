import 'package:flutter/material.dart';

class EditorPage extends StatefulWidget {
  @override
  _EditorPageState createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  TextEditingController _controller = TextEditingController();
  int _yeniYazilanIndis = 0;
  String _ozellikler = "";
  String _tumMetin = "";
  String _anlikMetin = "";
  List<TextSpan> _metinler = [];

  //Özellikler
  static const String _boldOzellik = "bold";
  static const String _italicOzellik = "italic";
  static const String _renkOzellik = "colorful";
  static const String _altCizgiliOzellik = "underlined";
  //
  static const Color _varsayilanRenk = Colors.black;
  static const Color _renk =
      Colors.blue; //Sonradan değişebilir veya uygulama üzerinden seçilebilir.
  //Özellik butonları için stiller
  static const TextStyle _boldStil = TextStyle(fontWeight: FontWeight.bold);
  static const TextStyle _italicStil = TextStyle(fontStyle: FontStyle.italic);
  static const TextStyle _altCizgiStil = TextStyle(decoration: TextDecoration.underline);
  static const TextStyle _renkStil = TextStyle(color: _renk);
  //
  static const EdgeInsets _simetrikPadding =
      const EdgeInsets.symmetric(horizontal: 16, vertical: 8);

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
              padding: _simetrikPadding,
              color: Colors.amber,
              height: double.maxFinite,
              child: _buildRichText(_metinler),
            ),
          ),
          Expanded(
            child: Container(
              padding: _simetrikPadding,
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

  TextSpan _metin(String _icerik) {
    if (_icerik == " ") {
      return TextSpan(text: " ");
    }
    bool _boldMu = _ozellikler.contains(_boldOzellik);
    bool _italikMi = _ozellikler.contains(_italicOzellik);
    bool _renkliMi = _ozellikler.contains(_renkOzellik);
    bool _altiCizgiliMi = _ozellikler.contains(_altCizgiliOzellik);
    return TextSpan(
      text: _icerik,
      style: TextStyle(
        fontWeight: _boldMu ? FontWeight.bold : null,
        fontStyle: _italikMi ? FontStyle.italic : null,
        color: _renkliMi ? _renk : _varsayilanRenk,
        decoration: _altiCizgiliMi ? TextDecoration.underline : null,
      ),
    );
  }

  Widget get _ozelliklerBari => Padding(
        padding: _simetrikPadding,
        child: Row(
          children: [
            _gonder,
            SizedBox(width: 12),
            _ozellikBold,
            SizedBox(width: 12),
            _ozellikItalic,
            SizedBox(width: 12),
            _ozellikAltCizgi,
            SizedBox(width: 12),
            _ozellikRenk,
            SizedBox(width: 12),
            _temizle,
            Spacer(),
            Text('Özellikler: $_ozellikler'),
          ],
        ),
      );

  Widget get _gonder => ElevatedButton(
        onPressed: () {
          _metinEkleme();
          setState(() {});
        },
        child: Text("Gönder!"),
      );

  Widget get _ozellikBold => ElevatedButton(
      child: Text('B', style: _boldStil),
      onPressed: () {
        _cizgisizMetinEkleme();
        if (_ozellikler.contains(_boldOzellik)) {
          _ozellikler = _ozellikler.replaceAll(_boldOzellik, ' ');
        } else {
          _ozellikler += _boldOzellik;
        }
        setState(() {});
      });

  Widget get _ozellikItalic => ElevatedButton(
      child: Text('I', style: _italicStil),
      onPressed: () {
        _cizgisizMetinEkleme();
        if (_ozellikler.contains(_italicOzellik)) {
          _ozellikler = _ozellikler.replaceAll(_italicOzellik, '');
        } else {
          _ozellikler += _italicOzellik;
        }
        setState(() {});
      });

  Widget get _ozellikAltCizgi => ElevatedButton(
      child: Text('U', style: _altCizgiStil),
      onPressed: () {
        _metinleriAlme();
        if (_anlikMetin.trim().isNotEmpty) {
          _yeniYazilanIndis = _controller.text.length;
          if (_ozellikler.contains(_altCizgiliOzellik)) {
            _altiCizgiliIcinBoslukEkleme();
          } else {
            _metinler.add(_metin(_anlikMetin));
          }
        }
        if (_ozellikler.contains(_altCizgiliOzellik)) {
          _ozellikler = _ozellikler.replaceAll(_altCizgiliOzellik, '');
        } else {
          _metinler.add(_metin(_anlikMetin));
          _ozellikler += _altCizgiliOzellik;
        }
        setState(() {});
      });

  Widget get _ozellikRenk => ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue[50])),
      child: Text('R', style: _renkStil),
      onPressed: () {
        _cizgisizMetinEkleme();
        if (_ozellikler.contains(_renkOzellik)) {
          _ozellikler = _ozellikler.replaceAll(_renkOzellik, '');
        } else {
          _ozellikler += _renkOzellik;
        }
        setState(() {});
      });

  Widget get _temizle => ElevatedButton(
        child: Text('Temizle !'),
        onPressed: () {
          _metinEkleme();
          _yeniYazilanIndis = 0;
          _controller.text = "";
          _metinler.add(_metin(" "));
          setState(() {});
        },
      );

  Widget get _textField => Padding(
        padding: _simetrikPadding,
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
  _metinEkleme() {
    if (_ozellikler.contains(_altCizgiliOzellik)) {
      _metinleriAlme();
      _yeniYazilanIndis = _controller.text.length;
      _altiCizgiliIcinBoslukEkleme();
    } else {
      _cizgisizMetinEkleme();
    }
  }

  void _cizgisizMetinEkleme() {
    _metinleriAlme();
    if (_anlikMetin.trim().isNotEmpty) {
      _yeniYazilanIndis = _controller.text.length;
      _metinler.add(_metin(_anlikMetin));
      _anlikMetin = "";
    }
  }

  void _metinleriAlme() {
    _tumMetin += _controller.text.substring(_yeniYazilanIndis);
    _anlikMetin = _controller.text.substring(_yeniYazilanIndis);
  }

  void _altiCizgiliIcinBoslukEkleme() {
    List<String> _cizgililer = _anlikMetin.split(' ');
    _cizgililer.forEach((e) {
      _metinler.add(_metin(" "));
      _metinler.add(_metin(e));
    });
    _anlikMetin = "";
  }
}
