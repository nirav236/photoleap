// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoleap/photoview.dart';

import 'main.dart';

class AIanime extends StatelessWidget {
  const AIanime({super.key});



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
              "Filters to give your photos a splash of",
              style: TextStyle(
                  fontFamily: "Popins",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            "anime magic.",
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
            onPressed: () { Get.find<ImagePickerController>().getImage().then((value) =>
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

class AIselfie extends StatelessWidget {
  const AIselfie({super.key});



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
              "Reimagine your whole world, one selfie",
              style: TextStyle(
                  fontFamily: "Popins",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            "at a time!",
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