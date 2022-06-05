import 'package:flutter/material.dart';

import 'categories.dart';
import 'const.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0xffECEADE)),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: Image.asset(
                    'images/img1.png',
                    fit: BoxFit.cover,
                  )),
              Column(
                children: [
                  Text(
                    'An Evolving',
                    style: styleTitle,
                  ),
                  Text(
                    'collection of treatments',
                    style: styleTitle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 308.9,
                    height: 90,
                    child: Text(
                      'The Ordinary is born to disallow commodity to be disguised as ingenuity. The Ordinary is "Clinical formulations with integrity".',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff5F6750), fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Scrollmenu(Color(0xffA2AA7B).withOpacity(0.3)),
                      SizedBox(
                        width: 4,
                      ),
                      Scrollmenu(Color(0xffA2AA7B).withOpacity(0.3)),
                      SizedBox(
                        width: 4,
                      ),
                      Scrollmenu(greencolor),
                      SizedBox(
                        width: 4,
                      ),
                      Scrollmenu(Color(0xffA2AA7B).withOpacity(0.3))
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    child: FloatingActionButton(
                      child: Icon(Icons.arrow_forward),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoriesPage()));
                        });
                      },
                      backgroundColor: greencolor,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container Scrollmenu(Color colorcont) {
    return Container(
      height: 3,
      width: 15,
      color: colorcont,
    );
  }
}
