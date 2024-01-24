import 'package:flutter/material.dart';
import 'package:online_shooping_app/ApiModel.dart';
import 'package:online_shooping_app/Api_services.dart';

class ApiFScreen extends StatefulWidget {
  const ApiFScreen({super.key});

  @override
  State<ApiFScreen> createState() => _ApiFScreenState();
}

class _ApiFScreenState extends State<ApiFScreen> {
  bool isReady =true;
  Firstapi firstapi = Firstapi();

  getapi(){
    isReady = true;
    ApiServices().getFirstapi().then((value) {
      setState(() {
        firstapi =value!;
        isReady=false;
      });
    }).onError((error, stackTrace) => null);
  }

  @override

  void initState() {
    // TODO: implement initState
    getapi();
    super.initState();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Firest api integration"),
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: isReady==true?
          Center(
            child: LinearProgressIndicator(),
          ):
          Column(
            children: [
              Text(firstapi.userId.toString(),style: TextStyle(
                  color:Colors.red,
                fontSize: 30,

              ),),
              Text(firstapi.id.toString(),style: TextStyle(
                  color:Colors.cyan,
                fontSize: 20,

              ),),
              Text(firstapi.title.toString(),style: TextStyle(
                  color:Colors.green,
                fontSize: 25,

              ),),
              Text(firstapi.body.toString(),style: TextStyle(
                  color:Colors.deepOrangeAccent,
                fontSize: 35,

              ),),
            ],
          )

    );
  }
}
