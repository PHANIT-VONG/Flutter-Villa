import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SalePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
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
          ),
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.teal,
                child: Image.network(
                  'https://booyoungkhmer.com.kh/wp-content/uploads/2020/07/Queen-Villa-1-1024x650.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
