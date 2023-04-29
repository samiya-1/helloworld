import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gov_Schemes.dart';

class Scheme_Message extends StatefulWidget {
  const Scheme_Message({Key? key}) : super(key: key);

  @override
  State<Scheme_Message> createState() => _Scheme_MessageState();
}

class _Scheme_MessageState extends State<Scheme_Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Images/Tick.jpg",
                height: 50,
                width: 100,
                alignment: Alignment.topCenter,),

              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Text("Your applied for this Scheme successfully",textAlign: TextAlign.center,selectionColor: Colors.green,),

              ),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Gov_scheme(),));
              },
                style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.green,fixedSize: Size(200, 50)),
                child: Text("OK",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),

    );
  }
}
