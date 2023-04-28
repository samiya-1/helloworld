import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(
        
        body:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                       // prefixIcon: Icon(Icons.),
                        label: Text("Card Number"),
                         hintText: "Enter your card Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ))

                ),
              ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.numbers),
                  label: Text("CVV Number"),
                  // hintText: "Enter your CVV Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ))
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(
                 prefixIcon: Icon(Icons.date_range),
                  label: Text("Expiry Date"),
                  // hintText: "Enter Expiry Date of your Card",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ))
          ),
        ),
        SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    label: Text("password"),
                    hintText: "Enter your Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ))
            ),
          ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){/*Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));*/},
          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
          child: Text("Pay Now",style: TextStyle(
              fontSize: 18,color: Colors.white
          )),),
            ],
          ),
        ),
      );

  }
}
