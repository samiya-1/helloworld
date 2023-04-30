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
      Column(
          children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          decoration: InputDecoration(
             prefixIcon: Icon(Icons.person),
              label: Text("Username"),
              hintText: "Enter your Username",
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
                        label: Text("Password"),
                        hintText: "Enter your Password",
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
                      label: Text("Confirm Password"),
                      hintText: "Enter your Password once more",
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
                      label: Text("Age"),
                      hintText: "Enter your Age",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ))

              ),
            ),
            RadioListTile(
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
              title: Text("Other"),
              value: "other",
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
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      label: const Text("Email"),
                      hintText: "Enter your Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ))

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      label: const Text("Phone Number"),
                      hintText: "Enter your Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ))

              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));},
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
      );
  }
}
