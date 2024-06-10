import 'package:flutter/material.dart';

import '../../utils/global_var.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Motivational',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 50,
        centerTitle: true,
        actions: [
          ActionChip(
            label: Text(''),
          ),
        ],
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
                    (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: buildListTile(
                            textList[index], iconList[index], index)),
                  ),
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
                              fit: BoxFit.fill,
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
                              fit: BoxFit.fill,
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
                              fit: BoxFit.fill,
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
              height: 150,
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
                  categoryList.length,
                  (index) => SingleChildScrollView(
                    child: buildContainer(
                        categoryList[index]['img'],
                        categoryList[index]['quote'],
                        categoryList[index]['category']),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(String img, String quote, String category) {
    return Stack(children: [
      Container(
        height: 130,
        width: 110,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white,width: 1),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
            color: Colors.white),
        child: Center(
          child: Text(
            quote,
            style: TextStyle(color: Colors.white, fontSize: 8),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 150,left: 10),
        child: Text(category,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),),
      ),
    ]);
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
