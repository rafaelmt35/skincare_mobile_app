import 'package:flutter/material.dart';
import 'package:skincareapp/categorieslist.dart';

import 'const.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  Color primary = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 84,
              width: 381,
              child: Text(
                'Choose your favourite category',
                style: styleTitle2,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'You can choose more than one',
              style: TextStyle(color: Color(0xffAFAFAF), fontSize: 18),
            ),
            Container(
              width: 335,
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: newList.length,
                  itemBuilder: (BuildContext contex, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
                        width: newList[index].lengthcont,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1.0, color: Color(0xffF0F0F0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(newList[index].pictname),
                            Text(newList[index].name),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
