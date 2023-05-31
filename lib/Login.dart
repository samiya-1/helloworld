

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/API.dart';
import 'package:helloworld/forgottpassword.dart';
import 'package:helloworld/Resetpass.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home.dart';
import 'Register.dart';
import 'Profile.dart';

class Login extends StatefulWidget {
  const Login ({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController=TextEditingController();
  TextEditingController pwdController=TextEditingController();

  _pressLoginButton() async {
    setState(() {
      _isLoading = true;
    });
    var data = {
      'username': emailController.text.trim(), //username for email
      'password': pwdController.text.trim()
    };
    var res = await Api().authData(data,'api/login_users');
    var body = json.decode(res.body);

    if (body['success'] == true) {
      print(body);

      role = body['data']['role'];
      status =  body['data']['l_status'];

      localStorage = await SharedPreferences.getInstance();
      localStorage.setString('role', role.toString());
      localStorage.setInt('login_id', body['data']['login_id']);
      localStorage.setInt('user_id',  body['data']['user_id']);

      print('login_id ${body['data']['login_id']}');
      print('user_id ${body['data']['user_id']}');

      /*   if (user == role.replaceAll('"', '') &&
        storedvalue == status.replaceAll('"', '')) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    } else if (doctor == role.replaceAll('"', '') &&
        storedvalue == status.replaceAll('"', '')) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DoctHome(),
      ));
   }*/
      if (user == role &&
          storedvalue == status) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      } else if (doctor == role &&
          storedvalue == status) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      }else {
        Fluttertoast.showToast(
          msg: "Please wait for admin approval",
          backgroundColor: Colors.grey,
        );
      }


    } else {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );
    }
  }
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
                    style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,),
                        borderRadius: BorderRadius.circular(20)

                    ),

                  prefixIcon: Icon(Icons.person,color:Colors.green,),
                  label: Text("Username"),
                  )

                ),
              ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,),
                      borderRadius: BorderRadius.circular(20)

                  ),

                  prefixIcon: Icon(Icons.lock,color:Colors.green,),
                  label: Text("Password"),
                )

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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
              }, child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),))

        ],

              ),

        ],
                   )
    );






    }
}
