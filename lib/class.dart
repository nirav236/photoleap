import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class Photolist {
  final String imagepath;
  final String text;

  Photolist({required this.imagepath, required this.text});
}

List<Photolist> style = [
  Photolist(
    imagepath: "assets/textimage/photo.jpeg",
    text: 'Photo',
  ),
  Photolist(
    imagepath: "assets/textimage/hyper.jpeg",
    text: 'Hyperreal',
  ),
  Photolist(
    imagepath: "assets/textimage/anime.jpeg",
    text: 'Anime',
  ),
  Photolist(
    imagepath: "assets/textimage/film.jpeg",
    text: 'Film',
  ),
  Photolist(
    imagepath: "assets/textimage/dystopia.jpeg",
    text: 'Dystopia',
  ),
  Photolist(
    imagepath: "assets/textimage/cinema.jpeg",
    text: 'Cinema',
  ),
  Photolist(
    imagepath: "assets/textimage/alien.jpeg",
    text: 'Alien',
  ),
  Photolist(
    imagepath: "assets/textimage/kyoto.jpeg",
    text: 'Kyoto',
  ),
  Photolist(
    imagepath: "assets/textimage/fantasty.jpeg",
    text: 'Fantasty',
  ),
  Photolist(
    imagepath: "assets/textimage/cyber.jpeg",
    text: 'Cyber',
  ),
  Photolist(
    imagepath: "assets/textimage/ink.jpeg",
    text: 'Ink',
  ),
  Photolist(
    imagepath: "assets/textimage/space.jpeg",
    text: 'Space War',
  ),
  Photolist(
    imagepath: "assets/textimage/trippy.jpeg",
    text: 'Trippy',
  ),
  Photolist(
    imagepath: "assets/textimage/astral.jpeg",
    text: 'Astral',
  ),
  Photolist(
    imagepath: "assets/textimage/scifi.jpeg",
    text: 'Sci-fi',
  ),
  Photolist(
    imagepath: "assets/textimage/floral.jpeg",
    text: 'Floral',
  ),
  Photolist(
    imagepath: "assets/textimage/primitive.jpeg",
    text: 'Primitive',
  ),
  Photolist(
    imagepath: "assets/textimage/europe.jpeg",
    text: 'Europa',
  ),
  Photolist(
    imagepath: "assets/textimage/techpunk.jpeg",
    text: 'Techpunk',
  ),
  Photolist(
    imagepath: "assets/textimage/etheral.jpeg",
    text: 'Etheral',
  ),
  Photolist(
    imagepath: "assets/textimage/tattoo.jpeg",
    text: 'Tattoo',
  ),
];

List<String> chipItems = [
  'Bonfire by the lake',
  'Goofy Avocado',
  'Anime warrior flying through the sky',
  'Pirate drinking a pint',
  'Potato drinking beer',
];

List<String> chipItems2 = [
  'Futuristic sci-fi city art',
  'Fruits having a party',
  'comics cover motorcycle in space',
  'castle made of cheese',
  'Egg swimming in ocean'
];

List<String> chipItems3 = [
  'Funny Raccon',
  'cute corgi dog in garden',
  'dog jumping in the rain',
  'One eyed monk',
  'A duck with a flower hat'
];

List<String> drawer = [
  "What's new",
  "Open source licence"
      "Terms of use",
  "AI art terms of use",
  "Refund and cancellation Policy",
  "Private policy"
];

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;
  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}

class ListItem {
  final IconData icon;
  final String text;

  ListItem({required this.icon, required this.text});
}

List<ListItem> itemList = [
  ListItem(icon: FontAwesomeIcons.images, text: 'Edit photo'),
  ListItem(icon: FontAwesomeIcons.penFancy, text: 'Remove\n object'),
  ListItem(icon: FontAwesomeIcons.play, text: 'Animate'),
  ListItem(icon: FontAwesomeIcons.star, text: 'Enhance'),
  ListItem(icon: FontAwesomeIcons.water, text: 'Colorize'),
  ListItem(icon: FontAwesomeIcons.wandMagicSparkles, text: 'Change BG'),
];

class ImageList {
  final String imagepath;
  final String text;
  final IconData symbol;

  ImageList(
      {required this.imagepath, required this.text, required this.symbol});
}

List<ImageList> imageList = [
  ImageList(
      imagepath: "assets/image/AIscene.jpg",
      text: 'AI Scenes',
      symbol: FontAwesomeIcons.building),
  ImageList(
      imagepath: "assets/image/aitransform.jpg",
      text: 'AI Transform',
      symbol: FontAwesomeIcons.brush),
  ImageList(
      imagepath: "assets/image/text.jpg",
      text: 'Text to image',
      symbol: FontAwesomeIcons.textHeight),
  ImageList(
      imagepath: "assets/image/girl.jpg",
      text: 'AI Room',
      symbol: FontAwesomeIcons.building),
  ImageList(
      imagepath: "assets/image/anime.jpg",
      text: 'AI Anime',
      symbol: FontAwesomeIcons.medal),
  ImageList(
      imagepath: "assets/image/selfie.jpg",
      text: 'AI Selfies',
      symbol: FontAwesomeIcons.person),
];

List<String> imagePaths = [
  "assets/image/build1.jpeg",
  "assets/image/build2.jpeg",
  "assets/image/build3.jpeg",
  "assets/image/build4.jpeg",
  // Add more image paths here
];
List<String> imagePaths2 = [
  "assets/image/b1.jpeg",
  "assets/image/b2.jpeg",
  "assets/image/b3.jpeg",
  "assets/image/b4.jpeg",
  // Add more image paths here
];
