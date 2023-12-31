// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoleap/photoview.dart';

import 'class.dart';

class AIscenes extends StatelessWidget {
  const AIscenes({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
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
                            
                            fontSize: 28,
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
                         
                            fontSize: 18,
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
                           
                            fontSize: 28,
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
                           
                            fontSize: 18,
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
              Get.find<ImagePickerController>()
                  .getImage()
                  .then((value) => Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DestinationPage();
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
