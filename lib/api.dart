import 'dart:typed_data';

import 'package:http/http.dart' as http;

class Api extends sd {
  static const String apiKey = "yCq388UFTkQLvePbhAL5iSEn";
  static var baseUrl = Uri.parse("https://api.remove.bg/v1.0/removebg");
  @override
  void printHello() {
    // TODO: implement printHello
    super.printHello();
  }

  @override
  Future<Uint8List> removebg(String imagePath) async {
    print("object");
    var req = http.MultipartRequest("POST", baseUrl);
    req.headers.addAll({"X-API-Key": apiKey});
    req.files.add(await http.MultipartFile.fromPath("image_file", imagePath));
    final res = await req.send();
    print(res.statusCode);
    if (res.statusCode == 200) {
      http.Response img = await http.Response.fromStream(res);
      print(img.body);

      return img.bodyBytes;
    } else {
      print("Failed to fetch data");
      return Uint8List(20);
    }
  }
}

abstract class sd {
  void printHello() {
    print("Hello");
  }

  Future<Uint8List> removebg(String imagePath);
}
