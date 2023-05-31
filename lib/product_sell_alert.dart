import 'package:flutter/material.dart';
import 'package:helloworld/product.dart';
import 'package:helloworld/sell_product.dart';

class alert_sell_product extends StatefulWidget {
  const alert_sell_product({Key? key}) : super(key: key);

  @override
  State<alert_sell_product> createState() => _alert_sell_productState();
}

class _alert_sell_productState extends State<alert_sell_product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Image.asset("Images/tick.png",
              height: 50,
              width: 100,
              alignment: Alignment.topCenter,),*/
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text("Do you have Products to sell?",textAlign: TextAlign.center,selectionColor: Colors.green,),

            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell_Product(),));
            },
              style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.green,fixedSize: Size(200, 50)),
              child: Text("Yes",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 35,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Product(),));
            },
              style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.green,fixedSize: Size(200, 50)),
              child: Text("No",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),);
  }
}
