// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:photoleap/photoview.dart';

import 'main.dart';


class AIroom extends StatefulWidget {
  const AIroom({super.key});

  @override
  State<AIroom> createState() => _AIroomState();
}

class _AIroomState extends State<AIroom> {
//  late BetterPlayerController batterPlayerController;
//  @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     batterPlayerController = BetterPlayerController(
//       BetterPlayerConfiguration(
//       autoPlay: true,
//       ),
//       betterPlayerDataSource: BetterPlayerDataSource.network('https://cdn.videvo.net/videvo_files/video/premium/video0040/large_watermarked/900-1_900-2989-PD2_preview.mp4'));
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(height: 500, width: double.infinity, color: Colors.amber),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "AI filters to redecorate and reimagine",
              style: TextStyle(
                  fontFamily: "Popins",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            " your rooms.",
            style: TextStyle(
                fontFamily: "Popins",
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              "AI is unrefined and unpredictable, but it sure is\nfun. Keep experimenting to get the right result.",
              style: TextStyle(
                  fontFamily: "Popins",
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {  Get.find<ImagePickerController>().getImage().then((value) =>
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DestinationPage();
                                    },
                                  )));},
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120.0, vertical: 20.0),
              backgroundColor: Colors.purple,
              shape: const StadiumBorder(),
            ),
            child: const Text(
              "Continue",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
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



