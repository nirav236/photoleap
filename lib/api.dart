import 'package:http/http.dart' as http;

class Api {
  static const apiKey = "yCq388UFTkQLvePbhAL5iSEn";
  static var baseUrl = Uri.parse("https://api.remove.bg/v1.0/removebg");

  static removebg(String imagePath) async {
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
      return null;
    }
  }
}
