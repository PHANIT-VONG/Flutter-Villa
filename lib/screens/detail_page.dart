import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_villa/widgets/property_page.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            child: Image.network(
              'https://booyoungkhmer.com.kh/wp-content/uploads/2020/07/Queen-Villa-1-1024x650.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://www.leisureopportunities.co.uk/images/995586_746594.jpg',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Username',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 15,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Location ',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 17,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: CupertinoButton(
                                child: Text(
                                  'For sale',
                                  style: TextStyle(
                                    color: Colors.green[900],
                                    fontSize: 15,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.red,
                    indent: 5,
                    endIndent: 5,
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\$Price',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceAround,
                      spacing: 6,
                      runSpacing: 5,
                      runAlignment: WrapAlignment.spaceAround,
                      children: [
                        PropertyPage(
                          icon: Icon(
                            Icons.single_bed,
                            size: 50,
                          ),
                          number: 10,
                          name: 'Beds',
                        ),
                        PropertyPage(
                          icon: Icon(
                            Icons.wc,
                            size: 50,
                          ),
                          number: 5,
                          name: 'Baths',
                        ),
                        PropertyPage(
                          icon: Icon(
                            Icons.kitchen,
                            size: 50,
                          ),
                          number: 3,
                          name: 'Kitchens',
                        ),
                        PropertyPage(
                          icon: Icon(
                            Icons.car_rental,
                            size: 50,
                          ),
                          number: 3,
                          name: 'Garags',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
