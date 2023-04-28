import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/payment.dart';

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:
      Column(
          children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              label: Text("product Name"),
             // hintText: "Enter your Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              ))

      ),
    ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      label: Text("quantity"),
                     // hintText: "Enter the number of items needed",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ))

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      label: Text(""),
                      hintText: "Total price to be payed is",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ))

              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));},
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
              child: Text("Pay Now",style: TextStyle(
                  fontSize: 18,color: Colors.white
              )),),
     ]
    )
    )
    );
  }
}
