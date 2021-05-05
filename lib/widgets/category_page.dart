import 'package:flutter/material.dart';
import 'package:flutter_villa/models/category_class.dart';
import '../models/category_class.dart';

class CategoryPage extends StatelessWidget {
  var categoryList = [
    Categories(
        1,
        'https://booyoungkhmer.com.kh/wp-content/uploads/2020/07/Queen-Villa-2-1024x650.jpg',
        'Enjoy the modern living style in the Queen Villa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 200,
                width: 170,
                color: Colors.blue[50],
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Image.network(
                          'https://media.istockphoto.com/photos/modern-white-house-with-swimming-pool-picture-id1150278000?k=6&m=1150278000&s=612x612&w=0&h=i_kP5WFrKwnbR7IlP4d3nhwTrMiZ9n1wHbI4ErAMzUY=',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Title',
                          style: TextStyle(
                            fontSize: 20.0,
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
