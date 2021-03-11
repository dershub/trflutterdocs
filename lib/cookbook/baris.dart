import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CookbookMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        color: Colors.transparent,
        child: Column(
          children: [
            ///Ana ve alt başlıkların widget  listesini döndürüyo liste en aşağıda
            for (int i = 0; tumBasliklar.length > i; i++) tumBasliklar[i]
          ],
        ),
      ),
    );
  }
}

////////////////////////Basılabilen Mavi Yazı  Nokta Iconu ile birleşmesi  /////////////////////////////////////////////////
class MaviAltBaslikRow extends StatelessWidget {
  final String text;
  final Function onPressed;

  MaviAltBaslikRow({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Iconum,
        SizedBox(width: 7),
        BlueTextButton(
          text: text,
          onPressed: onPressed,
        )
      ],
    );
  }
}

////////////////////////////////////////////Bir Ana başlık ve alt Mavi alt başlıkların birleştiği yer////////////////////////////////////////////////////////////////////////////////////////////////
class AltBasliklar extends StatelessWidget {
  List<MaviAltBaslikRow> rowBasliklar = [];
  final String anaBaslik;

  AltBasliklar({this.rowBasliklar, this.anaBaslik});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BuyukYazi(
          text: anaBaslik,
          size: 40,
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              for (int i = 0; rowBasliklar.length > i; i++) rowBasliklar[i]
            ],
          ),
        )
      ],
    );
  }
}

//////////////////////////////////////////////////Mavi TextButon /////////////
class BlueTextButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const BlueTextButton({
    @required this.text,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}

//////////////////Başlık Olan Yazı Değişebilir ////////////////////////////////////////
class BuyukYazi extends StatelessWidget {
  final String text;
  final double size;

  BuyukYazi({@required this.text, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: size,
        color: Color(0xFF343a40),
      ),
    );
  }
}

/////////////Her alt başlığın başında bulunan Icon const yaptım sanırsam hafızada bir kere yer tutucak///////////////////

const Iconum = Icon(
  Icons.circle,
  size: 7,
);
////////////////////////////////////////////////////////////////////////////

///////////////Bu listenin bir elamanı bir ana başlık ve onun altında row olarak mavi basılabilen butonlar var/////////////////
List<AltBasliklar> tumBasliklar = [
  /// Animation
  AltBasliklar(
    anaBaslik: "Animation",
    rowBasliklar: [
      MaviAltBaslikRow(
        onPressed: () {},
        text: "Animate a page route transition",
      ),
      MaviAltBaslikRow(
        text: "Animate a widget using a physics simulation",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        onPressed: () {},
        text: "Animate the properties of a container",
      ),
      MaviAltBaslikRow(
        text: "Fade a widget in and out",
        onPressed: () {},
      )
    ],
  ),

  /// Design
  AltBasliklar(
    anaBaslik: "Design",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Add a Drawer to a screen",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Display a snackbar",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Export fonts from a package",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Update the UI based on orientation",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Use a custom font",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Use themes to share colors and font styles",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Work with tabs",
        onPressed: () {},
      ),
    ],
  ),

  ///Effects
  AltBasliklar(
    anaBaslik: "Effects",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Create a download button",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create a nested navigation flow",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create a photo filter carousel",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create a scrolling parallax effect",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create a shimmer loading effect",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create a staggered menu animation",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create a typing indicator",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create an expandable FAB",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create gradient chat bubbles",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Drag a UI element",
        onPressed: () {},
      ),
    ],
  ),

  /// Forms
  AltBasliklar(
    anaBaslik: "Forms",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Build a form with validation",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create and style a text field",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Focus and text fields",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Handle changes to a text field",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Retrieve the value of a text field",
        onPressed: () {},
      ),
    ],
  ),

  /// Gestures
  AltBasliklar(
    anaBaslik: "Gestures",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Add Material touch ripples",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Handle tabs",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Implement swipe to dismiss",
        onPressed: () {},
      ),
    ],
  ),

  /// Images
  AltBasliklar(
    anaBaslik: "Images",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Display images from the internet",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Fade in images with a placeholder",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Work with cached images",
        onPressed: () {},
      ),
    ],
  ),

  /// Lists
  AltBasliklar(
    anaBaslik: "Lists",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Create a grid list",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create a horizontal list",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Create lists with different types of items",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Place a floating app bar above a list",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Use lists",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Work with long lists",
        onPressed: () {},
      ),
    ],
  ),

  /// Maintenance
  AltBasliklar(
    anaBaslik: "Maintenance",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Report errors to a service",
        onPressed: () {},
      ),
    ],
  ),

  /// Navigation
  AltBasliklar(
    anaBaslik: "Navigation",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: " Animate a widget across screens",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: " Navigate to a new screen and back",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Navigate with named routes",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Place a floating app bar above a list",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Return data from a screen",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Send data to a new screen",
        onPressed: () {},
      ),
    ],
  ),

  ///Persistence
  AltBasliklar(
    anaBaslik: "Persistence",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Persist data with SQLite",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Read and write files",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Store key-value data on disk",
        onPressed: () {},
      ),
    ],
  ),

  ///Plugins
  AltBasliklar(
    anaBaslik: "Plugins",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "Play and pause a video",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Take a picture using the camera",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Store key-value data on disk",
        onPressed: () {},
      ),
    ],
  ),

  ///Testing
  AltBasliklar(
    anaBaslik: "Testing",
    rowBasliklar: [],
  ),

  ///Integration
  AltBasliklar(
    anaBaslik: "Integration",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "An introduction to integration testing",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Handle scrolling",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Performance profiling",
        onPressed: () {},
      ),
    ],
  ),

  ///Unit
  AltBasliklar(
    anaBaslik: "Unit",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "An introduction to unit testing",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Mock dependencies using Mockito",
        onPressed: () {},
      ),
    ],
  ),

  ///Widget
  AltBasliklar(
    anaBaslik: "Widget",
    rowBasliklar: [
      MaviAltBaslikRow(
        text: "An introduction to widget testing",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Find widgets",
        onPressed: () {},
      ),
      MaviAltBaslikRow(
        text: "Tap, drag, and enter text",
        onPressed: () {},
      ),
    ],
  ),
];
