import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/buy_machine.dart';
import 'package:helloworld/rent_machine.dart';

class Machines extends StatelessWidget {
  const Machines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("MACHINES",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    SizedBox(height: 25,),
    Align(
    alignment: Alignment.center,
    child: Text(" ",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
    ),
    new Image.asset(
    "Images/img_5.png",
    width: 540.0,
    height: 350.0,
    fit: BoxFit.fill,
    ),
      SizedBox(height: 30,),
    ElevatedButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy_M()));
    },
    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.blueAccent,fixedSize: Size(350, 57)),
    child: Text("Buy",style: TextStyle(
    fontSize: 18,color: Colors.white
    ),),),
    SizedBox(height: 35,),
    ElevatedButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Rent_M()));
    },
    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.blueAccent,fixedSize: Size(350, 57)),
    child: Text("Rent",style: TextStyle(
    fontSize: 18,color: Colors.white
    ),),),
    ],),
    );
    }
    }


