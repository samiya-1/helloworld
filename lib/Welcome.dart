import 'package:flutter/material.dart';
import 'package:helloworld/Login.dart';
import 'package:helloworld/Register.dart';

import 'Reg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello There!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Align(
              alignment: Alignment.center,
              child: Text("Helps the users for buyin and selling products ",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 35,),
            new Image.asset(
              "Images/welcome.jpg",
              width: 540.0,
              height: 350.0,
              fit: BoxFit.cover,
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
                child: Text("Login",style: TextStyle(
                  fontSize: 18,color: Colors.white
                ),),),
            SizedBox(height: 35,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
              child: Text("Sign Up",style: TextStyle(
                  fontSize: 18,color: Colors.white
              )),),
          ]
    ),

    );
  }
}

