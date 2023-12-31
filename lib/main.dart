// ignore_for_file: prefer_const_constructors, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoleap/AIanime.dart';
import 'package:photoleap/AIroom.dart';
import 'package:photoleap/TexttoImage.dart';
import 'package:photoleap/photoview.dart';

import 'AIscene.dart';
import 'class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Popins",
          textTheme: TextTheme(
              // ignore: deprecated_member_use
              bodyText2: TextStyle(color: Colors.white),
              bodyText1: TextStyle(color: Colors.white)),
          canvasColor: Colors.black,
          primaryColor: Colors.black,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.purple), // Set the default button color here
            ),
          ),
          appBarTheme: AppBarTheme(backgroundColor: Colors.black),
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.light),
      //  darkTheme: ThemeData(brightness: Brightness.dark),
      home: TexttoImage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ImagePickerController controller = Get.put(ImagePickerController());

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.settings, size: 30),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
        ),
        title: const Center(
          child: Text(
            "Photoleap",
            style: TextStyle(
                fontFamily: "Popins",
                fontSize: 25,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 250,
            ),
            Divider(color: Colors.white, height: 1.6),
            ListTile(
              title: const Text(
                "What's new",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Open source license',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Terms of use',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'AI art terms of use ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Refund and  cancellation policy',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Privacy policy',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.white, height: 1.6),
            ListTile(
              title: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                var item = itemList[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.find<ImagePickerController>().getImage().then(
                                  (value) =>
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return DestinationPage();
                                        },
                                      )));
                              // _openImagePicker().then((value) =>
                              //     Navigator.push(context, MaterialPageRoute(
                              //       builder: (context) {
                              //         return DestinationPage(images: _image);
                              //       },
                              //     )));
                            },
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor:
                                  const Color.fromARGB(255, 31, 31, 31),
                              child: Icon(
                                item.icon,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          (index == 1 || index == 3 || index == 4)
                              ? Positioned(
                                  left: 50,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage('assets/image/premium.jpeg'),
                                  ))
                              : SizedBox.shrink()
                        ],
                      ),
                    ),
                    Text(
                      item.text,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                var image = imageList[index];
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return (index == 0
                            ? AIscenes()
                            : index == 3
                                ? AIroom()
                                : index == 4
                                    ? AIanime()
                                    : index == 5
                                        ? AIselfie()
                                        : AIscenes());
                        //  AIscenes();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(image.imagepath),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            bottom: 12,
                            child: Row(
                              children: [
                                Icon(
                                  image.symbol,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  image.text,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
          Padding(
            padding: EdgeInsets.only(bottom: 5, top: 5, left: 5, right: 5),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage("assets/image/bottom.jpg"),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    // Adjust the positioning of the text as needed
                    //  left: 16,
                    bottom: 20,
                    right: 40,
                    child: Column(
                      children: [
                        Text(
                          "D&D Avatars\nWhich charactor\nare you?Start your\nadventure to find\nout...",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Material(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              width: 60,
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                'Try it',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                        // ElevatedButton(onPressed: (){}, child: Text("Try it"),style: ElevatedButton.styleFrom( shape: StadiumBorder(), ), )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
