import 'package:flutter/material.dart';
import 'package:ui01/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NextPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final price = 300;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 23),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Our',
                  style: TextStyle(
                      fontFamily: 'PoB',
                      fontSize: 70.0,
                      color: Colors.blueAccent),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text('Traditional',
                    style: TextStyle(fontFamily: 'PoB', fontSize: 70.0)),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text('Furniture',
                    style: TextStyle(
                        fontFamily: 'PoB',
                        fontSize: 70.0,
                        color: Colors.blueAccent)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 165,
                          margin: EdgeInsets.only(top: 40),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ClipRRect(
                              //     borderRadius: BorderRadius.only(
                              //       topLeft: Radius.circular(8.0),
                              //       topRight: Radius.circular(8.0),
                              //     ),
                              //     // clipBehavior: Clip.antiAlias,
                              //     child: FittedBox(
                              //       child: Image.asset(
                              //         'images/image2-no.png',
                              //         height: MediaQuery.of(context).size.width * 0.7,
                              //         width: MediaQuery.of(context).size.width,
                              //         fit: BoxFit.cover,
                              //       ),
                              //     )),
                              SizedBox(
                                height: 140,
                              ),
                              // ListTile(
                              //   title: Text('Furniture 1' , style: TextStyle(fontFamily: 'PoR'),),

                              // ),
                              Text(
                                'Furniture 1',
                                style: TextStyle(
                                    fontFamily: 'PoR', color: Colors.black),
                              ),
                              Text(
                                'A JIMMA chair',
                                style: TextStyle(
                                    fontFamily: 'PoB',
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    //  margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '\$ ${price} ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'PoB',
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 3, vertical: 2),
                                      decoration: BoxDecoration(
                                          // backgroundBlendMode:,
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.shopping_cart_checkout,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image2-no.png'))),
                          child: Image.asset(
                            'images/image2-no.png',
                            width: 150,
                            height: 180,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   height: 270,
                  //   width: 165,
                  //   margin: EdgeInsets.zero,
                  //   padding: EdgeInsets.symmetric(horizontal: 10),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       ClipRRect(
                  //           borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(8.0),
                  //             topRight: Radius.circular(8.0),
                  //           ),
                  //           // clipBehavior: Clip.antiAlias,
                  //           child: FittedBox(
                  //             child: Image.asset(
                  //               'images/image2-no.png',
                  //               height: MediaQuery.of(context).size.width * 0.7,
                  //               width: MediaQuery.of(context).size.width,
                  //               fit: BoxFit.cover,
                  //             ),
                  //           )),
                  //       SizedBox(
                  //         height: 30,
                  //       ),
                  //       // ListTile(
                  //       //   title: Text('Furniture 1' , style: TextStyle(fontFamily: 'PoR'),),

                  //       // ),
                  //       Text(
                  //         'Furniture 1',
                  //         style:
                  //             TextStyle(fontFamily: 'PoR', color: Colors.black),
                  //       ),
                  //       Text(
                  //         'A JIMMA chair',
                  //         style: TextStyle(
                  //             fontFamily: 'PoB',
                  //             fontSize: 20,
                  //             color: Colors.blue),
                  //       ),
                  //       SizedBox(
                  //         height: 5,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Container(
                  //             //  margin: EdgeInsets.only(left: 10),
                  //             child: Text(
                  //               '\$ ${price} ',
                  //               style: TextStyle(
                  //                   color: Colors.black,
                  //                   fontFamily: 'PoB',
                  //                   fontSize: 25),
                  //             ),
                  //           ),
                  //           Container(
                  //               padding: EdgeInsets.symmetric(
                  //                   horizontal: 3, vertical: 2),
                  //               decoration: BoxDecoration(
                  //                   // backgroundBlendMode:,
                  //                   color: Colors.blue,
                  //                   borderRadius: BorderRadius.circular(10)),
                  //               child: Icon(
                  //                 Icons.shopping_cart_checkout,
                  //                 color: Colors.white,
                  //               )),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // SizedBox(width: ,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 165,
                          margin: EdgeInsets.only(top: 80),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ClipRRect(
                              //     borderRadius: BorderRadius.only(
                              //       topLeft: Radius.circular(8.0),
                              //       topRight: Radius.circular(8.0),
                              //     ),
                              //     // clipBehavior: Clip.antiAlias,
                              //     child: FittedBox(
                              //       child: Image.asset(
                              //         'images/image2-no.png',
                              //         height: MediaQuery.of(context).size.width * 0.7,
                              //         width: MediaQuery.of(context).size.width,
                              //         fit: BoxFit.cover,
                              //       ),
                              //     )),
                              SizedBox(
                                height: 140,
                              ),
                              // ListTile(
                              //   title: Text('Furniture 1' , style: TextStyle(fontFamily: 'PoR'),),

                              // ),
                              Text(
                                'Furniture 1',
                                style: TextStyle(
                                    fontFamily: 'PoR', color: Colors.black),
                              ),
                              Text(
                                'A JIMMA chair',
                                style: TextStyle(
                                    fontFamily: 'PoB',
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    //  margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '\$ ${price} ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'PoB',
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 3, vertical: 2),
                                      decoration: BoxDecoration(
                                          // backgroundBlendMode:,
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.shopping_cart_checkout,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/images3-no.png'))),
                          child: Image.asset(
                            'images/images3-no.png',
                            width: 150,
                            height: 180,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 165,
                          margin: EdgeInsets.only(top: 40),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ClipRRect(
                              //     borderRadius: BorderRadius.only(
                              //       topLeft: Radius.circular(8.0),
                              //       topRight: Radius.circular(8.0),
                              //     ),
                              //     // clipBehavior: Clip.antiAlias,
                              //     child: FittedBox(
                              //       child: Image.asset(
                              //         'images/image2-no.png',
                              //         height: MediaQuery.of(context).size.width * 0.7,
                              //         width: MediaQuery.of(context).size.width,
                              //         fit: BoxFit.cover,
                              //       ),
                              //     )),
                              SizedBox(
                                height: 140,
                              ),
                              // ListTile(
                              //   title: Text('Furniture 1' , style: TextStyle(fontFamily: 'PoR'),),

                              // ),
                              Text(
                                'Furniture test',
                                style: TextStyle(
                                    fontFamily: 'PoR', color: Colors.black),
                              ),
                              Text(
                                'A JIMMA chair',
                                style: TextStyle(
                                    fontFamily: 'PoB',
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    //  margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '\$ ${price} ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'PoB',
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 3, vertical: 2),
                                      decoration: BoxDecoration(
                                          // backgroundBlendMode:,
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.shopping_cart_checkout,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image2-no.png'))),
                          child: Image.asset(
                            'images/image2-no.png',
                            width: 150,
                            height: 180,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   height: 270,
                  //   width: 165,
                  //   margin: EdgeInsets.zero,
                  //   padding: EdgeInsets.symmetric(horizontal: 10),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       ClipRRect(
                  //           borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(8.0),
                  //             topRight: Radius.circular(8.0),
                  //           ),
                  //           // clipBehavior: Clip.antiAlias,
                  //           child: FittedBox(
                  //             child: Image.asset(
                  //               'images/image2-no.png',
                  //               height: MediaQuery.of(context).size.width * 0.7,
                  //               width: MediaQuery.of(context).size.width,
                  //               fit: BoxFit.cover,
                  //             ),
                  //           )),
                  //       SizedBox(
                  //         height: 30,
                  //       ),
                  //       // ListTile(
                  //       //   title: Text('Furniture 1' , style: TextStyle(fontFamily: 'PoR'),),

                  //       // ),
                  //       Text(
                  //         'Furniture 1',
                  //         style:
                  //             TextStyle(fontFamily: 'PoR', color: Colors.black),
                  //       ),
                  //       Text(
                  //         'A JIMMA chair',
                  //         style: TextStyle(
                  //             fontFamily: 'PoB',
                  //             fontSize: 20,
                  //             color: Colors.blue),
                  //       ),
                  //       SizedBox(
                  //         height: 5,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Container(
                  //             //  margin: EdgeInsets.only(left: 10),
                  //             child: Text(
                  //               '\$ ${price} ',
                  //               style: TextStyle(
                  //                   color: Colors.black,
                  //                   fontFamily: 'PoB',
                  //                   fontSize: 25),
                  //             ),
                  //           ),
                  //           Container(
                  //               padding: EdgeInsets.symmetric(
                  //                   horizontal: 3, vertical: 2),
                  //               decoration: BoxDecoration(
                  //                   // backgroundBlendMode:,
                  //                   color: Colors.blue,
                  //                   borderRadius: BorderRadius.circular(10)),
                  //               child: Icon(
                  //                 Icons.shopping_cart_checkout,
                  //                 color: Colors.white,
                  //               )),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // SizedBox(width: ,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 165,
                          margin: EdgeInsets.only(top: 80),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ClipRRect(
                              //     borderRadius: BorderRadius.only(
                              //       topLeft: Radius.circular(8.0),
                              //       topRight: Radius.circular(8.0),
                              //     ),
                              //     // clipBehavior: Clip.antiAlias,
                              //     child: FittedBox(
                              //       child: Image.asset(
                              //         'images/image2-no.png',
                              //         height: MediaQuery.of(context).size.width * 0.7,
                              //         width: MediaQuery.of(context).size.width,
                              //         fit: BoxFit.cover,
                              //       ),
                              //     )),
                              SizedBox(
                                height: 140,
                              ),
                              // ListTile(
                              //   title: Text('Furniture 1' , style: TextStyle(fontFamily: 'PoR'),),

                              // ),
                              Text(
                                'Furniture test',
                                style: TextStyle(
                                    fontFamily: 'PoR', color: Colors.black),
                              ),
                              Text(
                                'A JIMMA chair',
                                style: TextStyle(
                                    fontFamily: 'PoB',
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    //  margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '\$ ${price} ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'PoB',
                                          fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 3, vertical: 2),
                                      decoration: BoxDecoration(
                                          // backgroundBlendMode:,
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.shopping_cart_checkout,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image2-no.png'))),
                          child: Image.asset(
                            'images/image2-no.png',
                            width: 150,
                            height: 180,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
