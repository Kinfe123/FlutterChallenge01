import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(194, 242, 255, 1),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.circle_notifications, color: Colors.black, size: 40),
                SizedBox(
                  width: 14,
                ),
                Icon(Icons.search, color: Colors.black, size: 40),
                SizedBox(
                  width: 14,
                )
              ],
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                child: Center(
                  child: Image.asset(
                    'images/images3-no.png',
                    width: 400,
                    height: 500,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Furniture 1',
                      style: TextStyle(fontFamily: 'PoB'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'A Jimma Chair',
                          style: TextStyle(
                              fontFamily: 'PoB',
                              fontSize: 25,
                              color: Colors.blue),
                        ),
                        Text('\$ 300'),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
