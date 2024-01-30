import 'package:flutter/material.dart';
import '../../screens/homepage.dart';
import '../../screens/homepage.dart';
class CartPage extends StatefulWidget {
    ProductModel zola;

   CartPage( this.zola,{super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> items = List.generate(5, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {

            },
            child: Column(


              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ListTile(
                      //tileColor: Colors.grey,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        //tileColor: Colors.w,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text( widget.zola.name,
                            style: TextStyle(

                              fontWeight: FontWeight.bold
                            ),),
                            Row(
                              children: [
                                Text("Size:"),
                                Text(" 7 , Black"),
                              ],
                            ),
                            Text("rating"),
                            Text(widget.zola.price),
                            Text("offer"),

                          ],
                        ),
                        leading: Container(
                          height: MediaQuery.of(context).size.height*0.08,
                          width:  MediaQuery.of(context).size.width*0.2,
                          color: Colors.black,
                          child: Image.asset(widget.zola.image,),
                        ),


                    ),
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
