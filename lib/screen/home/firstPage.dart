import 'package:flutter/material.dart';

import '../../utils/global_var.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String quotes = '';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'quotes of the day',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(onTap: (){
              Navigator.of(context).pushNamed('/save');
            },child: Icon(Icons.save)),
          )
        ],
        elevation: 50,
        centerTitle: true,

      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 280,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xff0e0e0e),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/draw.jpg'),
                        )),
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Quotes ',
                          style: TextStyle(
                              color: Color(0xff882d0b),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        TextSpan(
                          text: 'App ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 460,
              width: 350,
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  ...List.generate(
                      iconList.length,
                      (index) => buildListTile(
                          textList[index], iconList[index], index)),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Wrap(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/img/5.jpg')),
                          border: Border.all(color: Colors.blue, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/7.jpg')),
                          border: Border.all(color: Colors.blue, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/2.jpg')),
                          border: Border.all(color: Colors.blue, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/3.jpg')),
                          border: Border.all(color: Colors.blue, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/8.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                ...List.generate(
                  bgImg.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                      selectedIndex = index;
                      // quotes = categoryList[index]['name']!;
                      // quotes1 = categoryList[selectedIndex][index]['quote'];
                      // quotes2 = categoryList[selectedIndex][index]['author'];
                    });
                      Navigator.of(context).pushNamed('/edit');

                    },
                    child:
                    Stack(
                        children: [
                      Container(
                        height: 130,
                        width: 110,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 1),
                            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(bgImg[index]['img'])),
                            color: Colors.white),
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 100,left: 8),
                          child: Text(
                              category[index]['name']!,
                              style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),
                            ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(
    String text,
    IconData icon,
    int index,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 23,
      ),
      title: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// int index = 0;
