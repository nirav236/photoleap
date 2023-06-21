// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoleap/photoview.dart';

import 'main.dart';

class AIscenes extends StatelessWidget {
  const AIscenes({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 57, 49, 49),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "For best results",
                        style: TextStyle(
                            fontFamily: "Popins",
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Urban landscapes,photographed in the day\ntime,ground level perspective",
                        style: TextStyle(
                            fontFamily: "Popins",
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    color: const Color.fromARGB(255, 57, 49, 49),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        String imagePath = imagePaths[index];
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    imagePath,
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 57, 49, 49),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Avoid using",
                        style: TextStyle(
                            fontFamily: "Popins",
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Photos of people or animals,wild landscapes,\nphotos taken at night or in low light",
                        style: TextStyle(
                            fontFamily: "Popins",
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    color: const Color.fromARGB(255, 57, 49, 49),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        String imagePath = imagePaths2[index];
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    imagePath,
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
               Get.find<ImagePickerController>().getImage().then((value) =>
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DestinationPage();
                                    },
                                  )));
            },
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
