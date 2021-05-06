import 'package:flutter/material.dart';
import 'package:flutter_villa/models/category_class.dart';
import 'package:flutter_villa/screens/detail_page.dart';
import '../models/category_class.dart';

class CategoryPage extends StatelessWidget {
  var categoryList = [
    Categories(
      1,
      'https://booyoungkhmer.com.kh/wp-content/uploads/2020/07/Queen-Villa-2-1024x650.jpg',
      'living style in the Queen Villa',
    ),
    Categories(
      2,
      'https://i.ytimg.com/vi/SHUJ_qZKo_I/hqdefault.jpg',
      'living style in the Queen Villa',
    ),
    Categories(
      2,
      'https://repstaticneu.azureedge.net/images/4010/L/WM/Large/62ae10cc-cd13-4671-87a9-479f8777776e-b9a50e0d-d134-441b-b1f7-ffe14c8fcae9.jpg',
      'living style in the Queen Villa',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(),
                            ),
                          );
                        },
                        child: Container(
                          child: Image.network(
                            categoryList[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          categoryList[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
