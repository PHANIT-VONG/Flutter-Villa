import 'package:flutter/material.dart';

class PropertyPage extends StatelessWidget {
  final Icon icon;
  final int number;
  final String name;

  const PropertyPage({Key key, this.icon, this.number, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              icon,
              SizedBox(
                width: 5,
              ),
              Text(
                '$number',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Text('$name'),
        ],
      ),
    );
  }
}
