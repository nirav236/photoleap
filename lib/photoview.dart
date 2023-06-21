import 'dart:io';
import 'package:flutter/material.dart';

class DestinationPage extends StatelessWidget {
  final File? images;

  const DestinationPage({super.key, required this.images});

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
          child: images != null
              ? Image.file(
                  images!,
                  fit: BoxFit.cover,
                )
              : const Text('No Image Selected'),
        ),
      ),
    );
  }
}

