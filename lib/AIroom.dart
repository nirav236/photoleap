// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoleap/photoview.dart';

import 'class.dart';


class AIroom extends StatefulWidget {
  const AIroom({super.key});

  @override
  State<AIroom> createState() => _AIroomState();
}

class _AIroomState extends State<AIroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(height: 500, width: double.infinity, color: Colors.amber),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "AI filters to redecorate and reimagine",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            " your rooms.",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              "AI is unrefined and unpredictable, but it sure is\nfun. Keep experimenting to get the right result.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Get.find<ImagePickerController>()
                  .getImage()
                  .then((value) => Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          // ignore: prefer_const_constructors
                          return DestinationPage();
                        },
                      )));
            },
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120.0, vertical: 20.0),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              "Continue",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

