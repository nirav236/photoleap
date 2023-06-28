import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var loaded = false;

  var removedbg = false;

  var isloading = false;

  Uint8List? image;
  String imagePath = "";

  pickImage() async {
    final img = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 100);

    if (img != null) {
      imagePath = img.path;

      loaded = true;
      setState(() {});
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bg Remove"),
      ),
      body: Center(
        child: removedbg
            ? Image.memory(image!)
            // BeforeAfter(
            //     beforeImage: Image.file(File(imagePath)),
            //     afterImage: Image.memory(image!),
            //   )
            : loaded
                ? GestureDetector(
                    onTap: () {
                      pickImage();
                    },
                    child: Image.file(
                      File(imagePath),
                    ),
                  )
                : SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        pickImage();
                      },
                      child: const Text("Remove BG"),
                    ),
                  ),
      ),
      bottomNavigationBar: SizedBox(
          height: 56,
          child: ElevatedButton(
            onPressed: loaded
                ? () async {
                    setState(() {
                      isloading = true;
                    });
                    image = await Api().removebg(imagePath);

                    if (image != null) {
                      removedbg = true;
                      isloading = false;
                      setState(() {});
                    }
                  }
                : null,
            child: isloading
                ? const CircularProgressIndicator()
                : const Text(
                    "Remove BG",
                    style: TextStyle(color: Colors.amber),
                  ),
          )),
    );
  }
}
