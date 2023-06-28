// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'class.dart';

// ignore: must_be_immutable
class TexttoImage extends StatefulWidget {
  const TexttoImage({super.key});

  @override
  State<TexttoImage> createState() => _TexttoImageState();
}

class _TexttoImageState extends State<TexttoImage> {
  int? selectedChipIndex;
  int? selectedListViewItemIndex;
  TextEditingController controller = TextEditingController();

  void selectChip(int index) {
    setState(() {
      if (selectedChipIndex == index) {
        selectedChipIndex = null;
        selectedListViewItemIndex = null;
      } else {
        selectedChipIndex = index;
      }
    });
  }

  void selectImage(int index) {
    setState(() {
      if (selectedListViewItemIndex == index) {
        selectedListViewItemIndex == null;
      } else {
        selectedListViewItemIndex = index;
      }
    });
  }

  void onContinuePressed() {
    FocusScope.of(context).unfocus(); // Hide the keyboard
    controller.clear(); // Clear the entered text
      if (selectedChipIndex == null || selectedListViewItemIndex == null) {
      return; // Return if no chip or image is selected
    }
  }

  

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: Stack(children: [
        ListView(
          children: [
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Describe the image you want:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                //  textAlign: TextAlign.start,
                controller: controller,
                style: TextStyle(
                  color: Colors.white, // Set the text color
                  fontSize: 20.0, // Set the text size
                ),

                cursorHeight: 30,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Type anything",
                  // contentPadding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                  filled: true,
                  fillColor: Colors.grey,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.clear();
                    },
                    icon: const Icon(Icons.close),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(chipItems.length, (index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: ChoiceChip(
                          backgroundColor: Colors.grey,
                          label: Text(
                            chipItems[index],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          selectedColor: Colors.purple,
                          selected: selectedChipIndex == index,
                          onSelected: (bool selected) {
                            setState(() {
                              selectChip(index);
                              if (selected) {
                                controller.text = chipItems[index];
                              } else {
                                controller.text = '';
                              }
                            });
                          },
                        ),
                      );
                    }),
                  ),
                  Row(
                    children: List.generate(chipItems2.length, (index1) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: ChoiceChip(
                          backgroundColor: Colors.grey,
                          label: Text(
                            chipItems2[index1],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          selectedColor: Colors.purple,
                          selected:
                              selectedChipIndex == index1 + chipItems.length,
                          onSelected: (bool selected) {
                            setState(() {
                              selectChip(index1 + chipItems.length);

                              if (selected) {
                                controller.text = chipItems2[index1];
                              } else {
                                controller.text = '';
                              }
                            });
                          },
                        ),
                      );
                    }),
                  ),
                  Row(
                    children: List.generate(chipItems3.length, (index2) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: ChoiceChip(
                          backgroundColor: Colors.grey,
                          label: Text(
                            chipItems3[index2],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          selectedColor: Colors.purple,
                          selected: selectedChipIndex ==
                              index2 + chipItems.length + chipItems2.length,
                          onSelected: (bool selected) {
                            setState(() {
                              selectChip(index2 +
                                  chipItems.length +
                                  chipItems2.length);
                              if (selected) {
                                controller.text = chipItems3[index2];
                              } else {
                                controller.text = '';
                              }
                            });
                          },
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Choose a style(recommended)",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  //  mainAxisSpacing: 2,
                  //   crossAxisSpacing: 20,
                ),

                itemCount: style.length, // Total number of items in the grid

                itemBuilder: (BuildContext context, int index3) {
                  var photo = style[index3];
                  return GestureDetector(
                    onTap: () {
                      selectImage(index3);
                     
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            // color: selectedListViewItemIndex == index3
                            //     ? Colors.purple
                            //     : Colors.white,
                            image: DecorationImage(
                                image: AssetImage(photo.imagepath),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: selectedListViewItemIndex == index3
                                  ? Colors.purple
                                  : Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          photo.text,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
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
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ElevatedButton(
            onPressed: onContinuePressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: 
              // (selectedChipIndex != null && selectedListViewItemIndex != null)
              //       ? Colors.purple
              //       : Colors.grey,

                    selectedChipIndex != null ? Colors.amber : Colors.grey,
             
              padding:
                  const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              "Continue",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ]),
    );
  }
}
