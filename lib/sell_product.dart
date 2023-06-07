import 'package:flutter/material.dart';

class Sell_Product extends StatefulWidget {
  const Sell_Product({Key? key}) : super(key: key);

  @override
  State<Sell_Product> createState() => _Sell_ProductState();
}

class _Sell_ProductState extends State<Sell_Product> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Sell Product",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                const SizedBox(height: 25,),
                /*Align(
                alignment: Alignment.topLeft,
                child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
              ),*/
                // SizedBox(height: 35,),
                Image.asset(
                  "Images/products.jpg",
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
                  child: Text("The amount to be recieved is"),
                  // hintText: "Enter Product Name",
                  /*border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)*/
                ),



                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){/*Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));*/},
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
                  child: const Text("Sell Now",style: TextStyle(
                      fontSize: 18,color: Colors.white
                  )),),
              ]
          ),
        )
    )
    );
  }
}
