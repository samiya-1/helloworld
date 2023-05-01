

import 'package:flutter/material.dart';
import 'package:helloworld/forgottpassword.dart';
import 'package:helloworld/Resetpass.dart';
import 'Home.dart';
import 'Reg.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  const Login ({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
    leading: IconButton(onPressed: (){
      Navigator.pop(context);},
      icon: Icon(Icons.arrow_back),)*/
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              const Text("Login",style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold)),
          SizedBox(height: 15,),

          const Text("Welcome Back! Login with your username and password",style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.bold)),
          SizedBox(height: 15,),

          Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text("Username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                  ))

                ),
              ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    label: Text("Password"),
                     //hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                    ))

            ),
          ),
          SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                Text("Forgott Password?",style: TextStyle(fontSize: 20,color: Colors.black),),TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Fpassword()));
                }, child: Text("click",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),))],),


          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
            child: Text("Login",style: TextStyle(
                fontSize: 18,color: Colors.white
            )),),

          SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Text("dont't have an acoount?",style: TextStyle(fontSize: 20),),TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg()));
              }, child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),))

        ],

              ),

        ],
                   )
    );






    }
}
