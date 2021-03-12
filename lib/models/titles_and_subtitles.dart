import 'contents_title_item.dart';

class TitleAndSubtitles {
  final String title;
  final List<ContentsTitleItem> subtitles;

  const TitleAndSubtitles({this.title, this.subtitles});
}

const List<TitleAndSubtitles> titlesAndSubtitles = const [
  const TitleAndSubtitles(title: 'Animasyon (Animation)', subtitles: animations),
  const TitleAndSubtitles(title: 'Tasarım (Design)', subtitles: designs),
  const TitleAndSubtitles(title: 'Efektler (Efekts)', subtitles: []),
  const TitleAndSubtitles(title: 'Formlar (Forms)', subtitles: forms),
  const TitleAndSubtitles(title: 'Gestures', subtitles: []),
  const TitleAndSubtitles(title: 'Görseller (Images)', subtitles: images),
  const TitleAndSubtitles(title: 'Listeler (Lists)', subtitles: lists),
  const TitleAndSubtitles(title: 'Bakım (Maintenance)', subtitles: maintenance),
];

const List<ContentsTitleItem> animations = [
  const ContentsTitleItem(
    title: "Animasyonlu sayfa geçişi yapmak (Animate a page route transition)",
    rota: 'animasyonlu-sayfa-gecisi',
  ),
  const ContentsTitleItem(
    title: "Bir Widget'ı hareketli hale getirmek (Animate a widget using a physics simulation)",
    rota: 'hareketli-widget',
  ),
  const ContentsTitleItem(
    title: "Container Widget'ı animasyonlu hale getirmek (Animate the properties of a container)",
    rota: 'animasyonlu-container',
  ),
  const ContentsTitleItem(
    title: "Bir Widget'a fade in - out efekti eklemek (Fade a widget in and out)",
    rota: 'efektli-widget',
  ),
];

const List<ContentsTitleItem> designs = [
  const ContentsTitleItem(
    title: "Ekrana Drawer Eklemek (Add a Drawer to a screen)",
    rota: 'drawer-eklemek',
  ),
  const ContentsTitleItem(
    title: "Snackbar Widget'ı ile uygulamada mesaj göstermek (Display a snackbar)",
    rota: 'snackbar-gostermek',
  ),
  const ContentsTitleItem(
    title: "Font eklemek (Export fonts from a package)",
    rota: 'font-eklemek',
  ),
  const ContentsTitleItem(
    title:
        "Uygulama arayüzünü yatay ya da dikey konuma göre güncellemek (Update the UI based on orientation)",
    rota: 'arayuz-guncelleme',
  ),
  const ContentsTitleItem(
    title: "Özel bir font kullanmak (Use a custom font)",
    rota: 'ozel-font-eklemek',
  ),
  const ContentsTitleItem(
    title: "Use themes to share colors and font styles",
    rota: 'tema',
  ),
  const ContentsTitleItem(
    title: "Tablar ile çalışmak (Work with tabs)",
    rota: 'tablarla-calismak',
  ),
];

const List<ContentsTitleItem> forms = [
  const ContentsTitleItem(
    title: "Validasyonlu (Doğrulamalı) Bir Form Oluşturmak",
    rota: 'validasyonlu-form',
  ),
  const ContentsTitleItem(
    title: "Bir Text Field Oluşturmak ve Biçimlendirmek",
    rota: 'textfield-olusturma',
  ),
  const ContentsTitleItem(
    title: "Focus ve Text Fieldlar",
    rota: 'focus-ve-textfieldlar',
  ),
  const ContentsTitleItem(
    title: "Text Fieldlar'daki değişiklikleri yönetin",
    rota: 'textfield-degisiklik-yonetimi',
  ),
  const ContentsTitleItem(
    title: "Text Fieldlar'daki değerleri alın",
    rota: 'textfield-deger-alma',
  ),
];

const List<ContentsTitleItem> images = [
  const ContentsTitleItem(
    title: "İnternet üzerinden resim göstermek.",
    rota: 'resim-internet',
  ),
  const ContentsTitleItem(
    title: "Resim yüklerken, yükleme gerçekleşene kadar başka bir resim göstermek.",
    rota: 'resim-yer-tutucu',
  ),
  const ContentsTitleItem(
    title: "Önbellekteki resimleri göstermek.",
    rota: 'resim-onbellek',
  ),
];

const List<ContentsTitleItem> lists = [
  const ContentsTitleItem(
    title: "Grid (Izgara) Liste Oluşturmak",
    rota: 'liste-grid',
  ),
  const ContentsTitleItem(
    title: "Yatay listeler oluşturmak (Create a horizontal list)",
    rota: 'liste-yatay',
  ),
  const ContentsTitleItem(
    title:
        "Farklı öğelerden oluşan listeler oluşturmak (Create lists with different types of items)",
    rota: 'liste-mix',
  ),
  const ContentsTitleItem(
    title:
        "Listenin üzerine floating app bar (kaydırılabilen uygulama çubuğu) yerleştirmek (Place a floating app bar above a list)",
    rota: 'liste-floating-app-bar',
  ),
  const ContentsTitleItem(
    title: "Listeleri kullanmak (Use Lists)",
    rota: 'liste-kullanimi',
  ),
  const ContentsTitleItem(
    title: "Uzun listeler ile çalışmak (Work with long lists)",
    rota: 'liste-uzun',
  ),
];

const List<ContentsTitleItem> maintenance = [
  const ContentsTitleItem(
    title: "Hataları bir hizmete bildirin.",
    rota: 'resim-internet',
  ),
];
