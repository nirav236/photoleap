import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'class.dart';

//import 'api.dart';

// ignore: must_be_immutable
class DestinationPage extends StatefulWidget {
  const DestinationPage({super.key});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  ImagePickerController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination Page'),
      ),
      body: Container(
        height: 500,
        width: 400,
        color: Colors.amber,
        child: controller.imagePath.isNotEmpty
            ? Image(
                image: FileImage(File(controller.imagePath.toString())),
                fit: BoxFit.cover,
              )
            : const Text('No Image Selected'),
      ),
    );
  }
}
