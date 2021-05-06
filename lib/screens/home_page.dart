import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_villa/widgets/category_page.dart';
import 'package:flutter_villa/widgets/sale_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://image.freepik.com/free-vector/people-profile-icon_24877-40756.jpg',
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1F5FE),
                    borderRadius: BorderRadius.circular(
                      18.0,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment_bank_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 15,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Welcome back Uran',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' everything is\nprogressing great.See ours Detail',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.red,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Listing Medai',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                CupertinoButton(
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            CategoryPage(),
            SizedBox(
              height: 10,
            ),
            SalePage(),
            SalePage(),
            SalePage(),
            SalePage(),
            SalePage(),
          ],
        ),
      ),
    );
  }
}
