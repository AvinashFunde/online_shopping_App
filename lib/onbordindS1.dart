import 'package:flutter/material.dart';

import 'onbordingS2.dart';

class Onbord1 extends StatefulWidget {
  const Onbord1({super.key});

  @override
  State<Onbord1> createState() => _Onbord1State();
}

class _Onbord1State extends State<Onbord1> {
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

                           image:AssetImage("assets/images/onbord1.png"),
                       fit: BoxFit.cover
                       )
                     ),
                   ),
                 ),
                 Text("Choose Your Products",
                 style: TextStyle(
                     fontSize: 30,
                  // fontWeight: FontWeight.bold,
                   fontFamily: 'Pacifico'
                 ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.08),
                 Text("Explore a world of possibilities and curate your own collection with our intuitive onboarding process. Unleash your style by selecting products that resonate with you.",
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
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Onbord2()));
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
