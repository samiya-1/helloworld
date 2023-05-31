
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/API.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/Login.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phnController=TextEditingController();
  TextEditingController addController=TextEditingController();
  TextEditingController pwdController=TextEditingController();
  TextEditingController unameController=TextEditingController();
  bool _isLoading=false;
  void registerUser()async {
    setState(() {
      _isLoading = true;
    });

    var data = {
      "name": nameController.text.trim(),
      "age": ageController.text.trim(),
      "email": emailController.text.trim(),
      "phone_number": phnController.text.trim(),
      "address": addController.text,
      "gender": gender,
      "password": pwdController.text.trim(),
      "username": unameController.text.trim(),

    };
    print("patient data${data}");
    var res = await Api().authData(data,'api/user_register');
    var body = json.decode(res.body);
    print('res${res}');
    if(body['success']==true)
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

      Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>Login()));

    }
    else
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

    }
  }
  String? gender;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.green,
          // ),
      body:
      SingleChildScrollView(
        child: Column(
            children: [
              const Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Padding(
        padding:  EdgeInsets.all(8.0),
        child: TextField(
            decoration: InputDecoration(
               fillColor: Colors.green,
                prefixIconColor: Colors.green,
               prefixIcon: Icon(Icons.person),
                label: Text("Username "),
               // hintText: "Enter your Username",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,),
                    borderRadius: BorderRadius.circular(20),
                ))

        ),
    ),


                 Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                      //keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          prefixIconColor: Colors.green,
                        prefixIcon: Icon(Icons.lock),
                          label: Text("Password"),
                         // hintText: "Enter your Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green,),
                              borderRadius: BorderRadius.circular(20),
                          ))

                  ),
                ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                   //keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIconColor: Colors.green,
                        prefixIcon: Icon(Icons.lock),
                        label: Text("Confirm Password"),
                        //hintText: "Enter your Password once more",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green,),
                            borderRadius: BorderRadius.circular(20),
                        ))

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIconColor: Colors.green,
                      prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                        ),
                        label: Text("Age"),
                        //hintText: "Enter your Age",
                        )

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                   // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIconColor: Colors.green,
                      prefixIcon: Icon(Icons.place),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                      ),
                      label: Text("Place"),
                    )

                ),
              ),
              Row(
                children: [
                  Text("Gender:")
                ],
              ),

              RadioListTile(
                activeColor: Colors.green,
                title: Text("Male"),
                value: "male",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),

              RadioListTile(
                activeColor: Colors.green,
                title: Text("Female"),
                value: "female",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
              //
              RadioListTile(
                activeColor: Colors.green,
                title: Text("Prefer not to Say"),
                value: "Prefer not to Say",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                        prefixIconColor: Colors.green,
                        prefixIcon: const Icon(Icons.email),
                        label: const Text("Email"),
                        //hintText: "Enter your Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                        ))

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIconColor: Colors.green,
                        prefixIcon: const Icon(Icons.phone),
                        label: const Text("Phone Number"),
                        //hintText: "Enter your Phone Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                        ))

                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green,fixedSize: Size(350, 57)),
                child: const Text("Signup",style: TextStyle(
                    fontSize: 18,color: Colors.white
                )),),

              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",style: TextStyle(fontSize: 20),),TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                  }, child: const Text("Login",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),))

                ],

              ),

            ],
        ),
      ),
      ),
      );
  }
}
