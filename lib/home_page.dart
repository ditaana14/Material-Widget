import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(
            'images/image.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          // title section
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  /*1*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*2*/
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Mount Bromo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Jawa Timur, Indonesia',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                /*3*/
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                const Text('41'),
              ],
            ),
          ),
          // button section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, color: Theme.of(context).primaryColor),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'CALL',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.near_me, color: Theme.of(context).primaryColor),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'ROUTE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share, color: Theme.of(context).primaryColor),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'SHARE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // text section
          const Padding(
            padding: EdgeInsets.all(32),
            child: Text(
              'Mount Bromo is an active volcano in East Java'
              'This mountain has a height of 2,329 meters above sea level' 
              'is in four districts'
              'Mount Bromo is famous as a major tourist attraction in East Java' 
              'Bromo is attractive because of its status as an active volcano'
              'Mount Bromo is included in the Bromo Tengger Semeru National Park area',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}