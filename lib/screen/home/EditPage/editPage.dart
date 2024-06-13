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
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            ...List.generate(
              imgTheme.length,
              (index) => buildContainer(imgTheme[index]['img'],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer( String img) {
    return Container(
      height: 150,
      width: 110,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1),
        color: Colors.blue,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        )
      ),
    );
  }
}
