import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  List iconList = [
    Icons.ramen_dining,
    Icons.lunch_dining,
    Icons.icecream,
    Icons.sports_bar,
    Icons.local_pizza,
  ];

  List items = [
    "Noodles",
    "Burger",
    "Desert",
    "Drink",
    "Pizza",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: List.generate(
                  5,
                  (index) => Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 2,
                                offset: Offset(2, 2))
                          ],
                        ),
                        child: Icon(
                          iconList[index],
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        items[index],
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
