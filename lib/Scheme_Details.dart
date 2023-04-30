import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Scheme_Message.dart';

class Scheme_Details extends StatefulWidget {
  const Scheme_Details({Key? key}) : super(key: key);

  @override
  State<Scheme_Details> createState() => _Scheme_DetailsState();
}

class _Scheme_DetailsState extends State<Scheme_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text('Schemes'),
    ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Scheme Details",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            /*Align(
              alignment: Alignment.topLeft,
              child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
            ),*/
            // SizedBox(height: 35,),
            Image.asset(
              "Images/Schemes.jpg",
              width: 540.0,
              height: 350.0,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scheme name"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scheme Date"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Whom can apply"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Benifits"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            SizedBox(height: 35,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Scheme_Message()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green
                  ,fixedSize: Size(350, 57)),
              child: Text("Apply",style: TextStyle(
                  fontSize: 18,color: Colors.white
              ),),),
          ],),
      ),);
  }
}
