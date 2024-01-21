

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shooping_app/addToCart.dart';
import 'package:online_shooping_app/globalVar.dart';
import 'package:online_shooping_app/homepage.dart';
import 'package:animate_do/animate_do.dart';

class DetailsPage extends StatefulWidget {
  ProductModel productData;

  DetailsPage(this.productData, {super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  GlobalVariable gvar =GlobalVariable();
  int num = 0;

  void subtnum() {
    setState(() {
      if (num > 0) {
        num--;
      }
    });
  }

  void addnum() {
    setState(() {
      if (num < 5) {
        num++;
      }
    });
  }

  Route DetailsPage(orientation) {
    return PageRouteBuilder(
      pageBuilder: (context, Animation, SecondayAnimation) => orientation,
      transitionsBuilder: (context, Animation, SecondayAmnimatio, child) {
        return RotationTransition(
          turns: Animation,
          child: child,
          filterQuality: FilterQuality.medium,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.productData.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: widget.productData.color,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            ),
          ),
        ],

        // title: Text(widget.image.name),
      ),
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.36,
              color: widget.productData.color,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Aesthetic Hand Bag",
                      style: TextStyle(color: Colors.white60, fontSize: 15),
                    ),
                    Text(
                      widget.productData.name,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190),
                      child: Text(
                        "Price",
                        style: TextStyle(color: Colors.white60, fontSize: 15),
                      ),
                    ),
                    Text(
                      widget.productData.price,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                //height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Colors",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                    size: 16,
                                  ),
                                  SizedBox(width: 10, height: 30),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Column(
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10, height: 5),
                              Text(
                                "12 cm",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "  Iconic designer bags often attain cult status, symbolizing luxury and craftsmanship. Brands like Chanel, Louis Vuitton, and Hermès set benchmarks with signature designs that endure through changing fashion landscapes",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 34, bottom: 35),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: subtnum,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.black),
                                  fixedSize: Size(.0, 40.0)),
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                // height: MediaQuery.of(context).size.height*0.03,
                                //   width: MediaQuery.of(context).size.width*0.065,
                                decoration: BoxDecoration(
                                  // color: Colors.cyan,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Text('$num',
                                    style: TextStyle(fontSize: 30)),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: addnum,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.black),
                                  fixedSize: Size(.0, 40.0)),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(
                              CupertinoIcons.heart_circle,
                              color: Colors.red,
                              size: 35,
                            ),

                            //  Container(
                            //   // height: MediaQuery.of(context).size.height*0.03,
                            // //   width: MediaQuery.of(context).size.width*0.065,
                            //    decoration: BoxDecoration(
                            //     // color: Colors.cyan,
                            //      border:Border.all(color: Colors.black),
                            //    ),
                            //   child: Center(
                            //     child: IconButton(
                            //         splashColor: Colors.red,
                            //       onPressed: (){
                            //           subtnum();
                            //       },
                            //       icon :Icon(CupertinoIcons.minus)
                            //     ),
                            //   ),
                            //
                            //
                            //  ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FadeInUp(
                            child: ElevatedButton(
                               onPressed: (){
                                 gvar.addToCart(widget.productData);
                                 setState(() {

                                 });
                                 log("cartList.length ${gvar.cartList.length}");
                               },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        color: Colors.black
                                    )
                                ),

                                child:Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: Colors.black,
                                )
                            ),
                          ),
                          FadeInUp(
                            child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                    color: Colors.black
                                  )
                                ),

                                child: Text(
                                  "Pay with EMI",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          FadeInUp(
                            // infinite: false,

                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    // backgroundColor: Colors.white,
                                    //side: BorderSide(color: Colors.black),
                                    // fixedSize: Size(220, 40.0)
                                    ),
                                child: Text("Buy Now")),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            width: 200,
            height: 200,
            left: 170,
            top: 220,
            child: ZoomIn(
                child: Image.asset(
              widget.productData.image,
            ))),
      ]),
    );
  }
}
