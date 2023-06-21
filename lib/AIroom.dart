// ignore_for_file: file_names

import 'package:flutter/material.dart';


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
        title: const Text("Photoleap"),
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
            onPressed: () {},
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
