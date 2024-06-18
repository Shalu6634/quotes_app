import 'package:flutter/material.dart';
import 'package:quotes_app/utils/global_var.dart';

class ThemeSelect extends StatefulWidget {
  const ThemeSelect({super.key});

  @override
  State<ThemeSelect> createState() => _ThemeSelectState();
}

class _ThemeSelectState extends State<ThemeSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Theme',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            ...List.generate(imgTheme.length, (index) => GestureDetector(onTap: (){
              setState(() {
                bgImg.add(imgTheme[selectedIndex]['img']);
              });
            },
              child: Container(
               height: 220,
                width: 110,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imgTheme[index]['img'])
                  )
                ),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
