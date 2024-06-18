import 'package:flutter/material.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:quotes_app/utils/global_var.dart';

import 'EditPage/editPage.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    centerTitle: true,
    elevation: 8,
    title: Text('Save',style: TextStyle(fontWeight: FontWeight.bold),),
  ),
      body: Column(

        children: [
          ...List.generate(
            likeList.length,
                (index) => Center(child: SelectableText(maxLines: 3,textAlign: TextAlign.center,'${likeList[index]}')),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
           setState(() {
             likeList.removeAt(index);
           });
      },child: Icon(Icons.delete),
      ),
    );
  }
}
int index = 0;