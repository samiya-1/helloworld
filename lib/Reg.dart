import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
          ),
      body:
      SingleChildScrollView(
        child: Column(
            children: [
              const Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            decoration: InputDecoration(
               fillColor: Colors.green,
                prefixIconColor: Colors.green,
               prefixIcon: Icon(Icons.person),
                label: Text("Username "),
               // hintText: "Enter your Username",
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
                        prefixIcon: Icon(Icons.lock),
                          label: Text("Password"),
                          hintText: "Enter your Password",
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
                        prefixIcon: Icon(Icons.lock),
                        label: Text("Confirm Password"),
                        hintText: "Enter your Password once more",
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
                      prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                        ),
                        label: Text("Age"),
                        hintText: "Enter your Age",
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
              RadioListTile(
                activeColor: Colors.green,
                title: Text("Transgender"),
                value: "Transgender",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
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
                        hintText: "Enter your Email",
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
                        hintText: "Enter your Phone Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)
                        ))

                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
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
