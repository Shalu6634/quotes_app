import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quotes_app/screen/home/saveScreen.dart';
import 'package:quotes_app/utils/quotesAllList/quotesList.dart';
import 'package:share_extend/share_extend.dart';

// import '../../utils/global_var.dart';
import 'EditPage/editPage.dart';

QuoteModel? quoteModel;

class SetTheme extends StatefulWidget {
  const SetTheme({super.key});


  @override
  State<SetTheme> createState() => _SetThemeState();
}

int x = 0;

class _SetThemeState extends State<SetTheme> {
  void initState() {
    quoteModel = QuoteModel.toList(quoteList);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Random random = Random();
                  x = random.nextInt(quoteModel!.quoteListModel.length);
                });
              },
                child: Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            GestureDetector(onTap: (){
              setState(() async{
                RenderRepaintBoundary boundary = globalImage[index].currentContext!
                    .findRenderObject() as RenderRepaintBoundary;
                ui.Image  image = await boundary.toImage();
                ByteData? byteData = await  image.toByteData(format: ui.ImageByteFormat.png);
                Uint8List img = byteData!.buffer.asUint8List();
                ImageGallerySaver.saveImage(img);
                //
                final path = await getApplicationDocumentsDirectory();
                File file = File("${path.path}/img.png");
                file.writeAsBytes(img);
                //
                ShareExtend.share(file.path, 'image');
                int location = WallpaperManager
                    .BOTH_SCREEN; //can be Home/Lock Screen
                bool result = await WallpaperManager.setWallpaperFromFile(
                    file.path, location);
              });
            },child: Icon(Icons.wallpaper,color: Colors.white,)),
          ],
        ),
      ),
      body: RepaintBoundary(
        key: globalImage[index],
        child: Container(
          height: height * 0.9 + 150,
          width: width * 0.9 + 60,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('${quoteModel!.quoteListModel[x].img}'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SelectableText(
                  minLines: 2,
                  textAlign: TextAlign.center,
                  '${quoteModel!.quoteListModel[x].quote}',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
              Center(
                child: SelectableText(
                  minLines: 2,
                  textAlign: TextAlign.center,
                  '~${quoteModel!.quoteListModel[x].author}\n',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
