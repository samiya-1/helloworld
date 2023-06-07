import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      title: Text('My Orders'),
    ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Order Details",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            /*Align(
              alignment: Alignment.topLeft,
              child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
            ),*/
            // SizedBox(height: 35,),
            Image.asset(
              "Images/Products.jpg",
              width: 540.0,
              height: 350.0,
              fit: BoxFit.fill,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Order number"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Order Items"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),


Text("Total amount is:"),
            const TextField()

          ],),
      ),);
  }
}
