import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sell_Machine extends StatefulWidget {
  const Sell_Machine({Key? key}) : super(key: key);

  @override
  State<Sell_Machine> createState() => _Sell_MachineState();
}

class _Sell_MachineState extends State<Sell_Machine> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Sell machines ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 25,),
                  /*Align(
                alignment: Alignment.topLeft,
                child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
              ),*/
                  // SizedBox(height: 35,),
                  new Image.asset(
                    "Images/New_Machines.jpg",
                    width: 540.0,
                    height: 350.0,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.password),
                            label: Text("Enter the quantity"),
                            // hintText: "Enter your Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ))

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("The amount to be recieved is"),
                    // hintText: "Enter Product Name",
                    /*border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)*/
                  ),



                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){/*Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));*/},
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
                    child: Text("Pay Now",style: TextStyle(
                        fontSize: 18,color: Colors.white
                    )),),
                ]
            ),
          )
      )
      );
  }
}
