import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            child: Image.network(
              'https://booyoungkhmer.com.kh/wp-content/uploads/2020/07/Queen-Villa-1-1024x650.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
