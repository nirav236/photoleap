import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoleap/main.dart';

class DestinationPage extends StatelessWidget {
  ImagePickerController controller = Get.find();

  DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination Page'),
      ),
      body: Center(
          child: Container(
        height: 400,
        width: 400,
        color: Colors.amber,
        child: controller.imagePath.isNotEmpty
            ? Image(
                image: FileImage(File(controller.imagePath.toString())),
                fit: BoxFit.cover,
              )
            : const Text('No Image Selected'),
      )),
    );
  }
}
