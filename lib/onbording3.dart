import 'package:flutter/material.dart';
import 'package:online_shooping_app/homepage.dart';

import 'onbordingS2.dart';

class Onbord3 extends StatefulWidget {
  const Onbord3({super.key});

  @override
  State<Onbord3> createState() => _Onbord3State();
}

class _Onbord3State extends State<Onbord3> {
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
                          image:AssetImage("assets/images/onbord2.png"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              Text("Pay By Cart",
                style: TextStyle(
                    fontSize: 30,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.08),
              Text("Tap, Pay, Done: Embrace the simplicity of paying by card for a seamless checkout. Experience the speed and security of modern transactions, tailored to your preferences.",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                color: cr,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Get Started",
                    style:TextStyle(
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
