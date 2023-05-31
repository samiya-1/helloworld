import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/alert_rent_machine.dart';
import 'package:helloworld/buy_machine.dart';
import 'package:helloworld/machine_sell_alert.dart';

class Machine extends StatelessWidget {
  const Machine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Machine Details",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            /*Align(
              alignment: Alignment.center,
              child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
            ),*/
            SizedBox(height: 35,),
            Image.asset(
          "Images/New_Machines.jpg",
          width: 540.0,
          height: 350.0,
          fit: BoxFit.fill,
        ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Machine Name"),
          // hintText: "Enter Product Name",
          /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Quantity"),
          // hintText: "Enter Product Name",
          /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Price"),
          // hintText: "Enter Product Name",
          /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Usage Date"),
          // hintText: "Enter Product Name",
          /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
        ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy_Machine()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
              child: Text("Buy Machine",style: TextStyle(
                  fontSize: 18,color: Colors.white
              ),),),
            SizedBox(height: 35,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>alert_sell_machine()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green
                  ,fixedSize: Size(350, 57)),
              child: Text("sell Machine",style: TextStyle(
                  fontSize: 18,color: Colors.white
              ),
              ),
            ),
            SizedBox(height: 35,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>alert_rent_machine()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green
                  ,fixedSize: Size(350, 57)),
              child: Text("Rent Machine",style: TextStyle(
                  fontSize: 18,color: Colors.white
              ),
              ),
            ),
          ] ),

    );
  }
}
