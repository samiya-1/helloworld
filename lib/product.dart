import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/sell_product.dart';
import 'package:helloworld/buy_product.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Products",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      SizedBox(height: 25,),
      Align(
        alignment: Alignment.center,
        child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
      ),
      SizedBox(height: 35,),
      /*new Image.asset(
        "Images/img_4.png",
        width: 540.0,
        height: 350.0,
        fit: BoxFit.fill,
      ),*/

      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
      },
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
        child: Text("Buy",style: TextStyle(
            fontSize: 18,color: Colors.white
        ),),),
      SizedBox(height: 35,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell()));
          },
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green
                ,fixedSize: Size(350, 57)),
            child: Text("Sell",style: TextStyle(
                fontSize: 18,color: Colors.white
            ),),),
    ],),
    );
  }
}
