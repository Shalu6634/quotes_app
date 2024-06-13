import 'package:flutter/material.dart';

import '../../../utils/global_var.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          ...List.generate(imgTheme.length, (index) => buildContainer(img: imgTheme[selectedIndex]['img']))
        ],
      ),
    );
  }

  Container buildContainer({required String img}) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue,width: 1),
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage(img),
        ),
      ),
    );
  }
}
