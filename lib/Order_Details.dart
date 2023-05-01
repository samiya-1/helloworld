import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Order_Details extends StatefulWidget {
  const Order_Details({Key? key}) : super(key: key);

  @override
  State<Order_Details> createState() => _Order_DetailsState();
}

class _Order_DetailsState extends State<Order_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Order Details'),
        ),
        body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text("Order",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
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
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Order name"),
        // hintText: "Enter Product Name",
        /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Order Date"),
        // hintText: "Enter Product Name",
        /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
        ),



        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Ordered Item"),
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
       // SizedBox(height: 35,),
        /*ElevatedButton(onPressed: (){
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>Scheme_Message()));
        },
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green
        ,fixedSize: Size(350, 57)),
        child: Text("Apply",style: TextStyle(
        fontSize: 18,color: Colors.white
        ),),),*/
        ],),
        ),);
        }
        }
