import 'package:flutter/material.dart';

class ListDemo2 extends StatelessWidget {
  List Images = [
    'assets/images/2985034.png',
    'assets/images/Food in plate 2.png',
    'assets/images/Food in plate 3.png',
    'assets/images/Food in plate 4.png',
    'assets/images/food1.png',
    'assets/images/Food_in_plate-removebg-preview.png',
    'assets/images/food_plate-removebg-preview.png'
  ];

  List<String> n1 = [
    'arrow',
    'Food',
    "Piza",
    'Burger',
    "Chicken",
    "Vegetable",
    'Beef Egg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                Images.length,
                (index) => Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: Image.asset(Images[index]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      n1[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
