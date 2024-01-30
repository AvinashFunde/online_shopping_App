import 'package:flutter/material.dart';

import 'onbording3.dart';

class Onbord2 extends StatefulWidget {
  const Onbord2({super.key});

  @override
  State<Onbord2> createState() => _Onbord2State();
}

class _Onbord2State extends State<Onbord2> {
  Color cr = Color(0xFFFAADB3);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Container(

                  height: 400,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:AssetImage("assets/images/onbord3.png"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              Text("Add To Your Cart",
                style: TextStyle(
                    fontSize: 30,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.08),
              Text("Cart Convenience: Explore, Select, and Add to Cart – Your Shortcut to a Seamless Shopping Journey. Your chosen products await, ready to be part of your next great adventure.",
                style: TextStyle(
                  height: 2,
                  fontSize: 18,
                  fontFamily: 'Poppinslight',
                  color: Colors.grey,

                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.05),
              MaterialButton(

                minWidth: 270,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Onbord3()));
                },
                color: cr,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Next",style:TextStyle(
                    color: Colors.white
                ) ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
