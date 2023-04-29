import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/sell_product.dart';
import 'package:helloworld/buy_product.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      SingleChildScrollView(
        child:
        Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Product'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Product Details",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            /*Align(
              alignment: Alignment.topLeft,
              child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
            ),*/
           // SizedBox(height: 35,),
            new Image.asset(
          "Images/img_4.png",
          width: 540.0,
          height: 350.0,
          fit: BoxFit.fill,
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Product Name"),
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
              child: Text("Expire Date"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy_Product()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
              child: Text("Buy",style: TextStyle(
                  fontSize: 18,color: Colors.white
              ),),),
            SizedBox(height: 35,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell_Product()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green
                  ,fixedSize: Size(350, 57)),
              child: Text("Sell",style: TextStyle(
                  fontSize: 18,color: Colors.white
              ),),),
          ],),
    ),
      );
  }
}
