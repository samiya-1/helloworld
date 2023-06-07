import 'package:flutter/material.dart';
import 'package:helloworld/payment.dart';

class Buy_Product extends StatefulWidget {
  const Buy_Product({Key? key}) : super(key: key);

  @override
  State<Buy_Product> createState() => _Buy_ProductState();
}

class _Buy_ProductState extends State<Buy_Product> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body:  SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              const Text("Buy Product",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height: 25,),
            /*Align(
                  alignment: Alignment.topLeft,
                  child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
                ),*/
            // SizedBox(height: 35,),
             Image.asset(
              "Images/Product_man.jpg",
              width: 540.0,
              height: 350.0,
              fit: BoxFit.fill,
            ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      decoration: InputDecoration(
                         // prefixIcon: Icon(Icons.password),
                          label: const Text("Enter the quantity"),
                         // hintText: "Enter your Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ))

                  ),
                ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("The amount to be payed is")

              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)*/
            ),



            const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Payment()));},
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),backgroundColor: Colors.green,fixedSize:
                  const Size(350, 57)),
                  child: const Text("Pay Now",style: TextStyle(
                      fontSize: 18,color: Colors.white
                  )),),
     ]
      ),
        ),
        )

      );
  }
}
