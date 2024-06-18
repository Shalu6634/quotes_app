import 'dart:io';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

import 'package:share_extend/share_extend.dart';
import 'dart:ui' as ui;
import '../../../utils/global_var.dart';


List<GlobalKey> globalImage = [
    ...List.generate(allCategory.length, (index) => GlobalKey()),
];

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}
class _EditScreenState extends State<EditScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                bgImg.length,
                (index) => buildContainer(index, height, width),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool ch = false;

  Widget buildContainer( index, double height, double width) {
    return RepaintBoundary(
      key: globalImage[index],
      child: Column(
        children: [
          Center(
            child: GestureDetector(onTap: (){
              setState(() {
               selectedIndex=index;
               Navigator.of(context).pushNamed('/set');
              });
            },
              child: Container(
                height: height * 0.6,
                width: width * 0.9 + 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(color: Colors.white, blurRadius: 2, spreadRadius: 2)
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imgTheme[index]['img']),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SelectableText(
                        minLines: 2,
                        textAlign: TextAlign.center,
                        '\n\n${allCategory[index]['quote']}',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                    Center(
                      child: SelectableText(
                        minLines: 2,
                        textAlign: TextAlign.center,
                        '~${allCategory[index]['author']}\n',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Text(categoryList[selectedIndex]['quote']),
          Container(
            height: height * 0.1 - 32,
            width: width * 0.2 + 260,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
              Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 28,
                  ),

                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    // image = bgImg[index];
                    setState(() async {
                      RenderRepaintBoundary boundary = globalImage[index].currentContext!
                          .findRenderObject() as RenderRepaintBoundary;
                      ui.Image  image = await boundary.toImage();
                      ByteData? byteData = await  image.toByteData(format: ui.ImageByteFormat.png);
                      Uint8List img = byteData!.buffer.asUint8List();
                      ImageGallerySaver.saveImage(img);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Save favorite quote'),
                        ),
                      );

                    });

                  },
                  child: Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(text: allCategory[index]['quote']),
                    );
                  },
                  icon: Icon(
                    Icons.copy,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(onTap: ()
                  {
                    setState(() async{
                      RenderRepaintBoundary boundary = globalImage[index].currentContext!
                          .findRenderObject() as RenderRepaintBoundary;
                      ui.Image  image = await boundary.toImage();
                      ByteData? byteData = await  image.toByteData(format: ui.ImageByteFormat.png);
                      Uint8List img = byteData!.buffer.asUint8List();
                      ImageGallerySaver.saveImage(img);

                      final path = await getApplicationDocumentsDirectory();
                      File file = File("${path.path}/img.png");
                      file.writeAsBytes(img);

                      ShareExtend.share(file.path, 'image');

                    });
                  },
                  child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 28,
                    ),
                ),

                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      ch = !ch;
                      if (!ch) {
                        likeList.removeAt([selectedIndex][index]);
                        likeList.removeAt([selectedIndex][index]);
                      } else {
                        likeList.add(allCategory[index]['quote']);
                      }
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(color: Colors.black),
                    child: ch
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 28,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 28,
                          ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

List likeList = [];