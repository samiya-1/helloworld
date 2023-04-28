import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Login.dart';

class Rpassword extends StatefulWidget {
  const Rpassword({Key? key}) : super(key: key);

  @override
  State<Rpassword> createState() => _RpasswordState();
}

class _RpasswordState extends State<Rpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("Images/img_2.png"),
          fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Reset Password",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Align(
              alignment: Alignment.center,
              child: Text("Enter the new password and confirm it",style: TextStyle(fontSize: 20,color: Colors.indigo),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      label: Text("Password"),
                      // hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ))

              ),
            ),
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      label: Text("Confirm Password"),
                      // hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ))

              ),
            ),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.blueAccent,fixedSize: Size(350, 57)),
                child: Text("Reset Password")),
          ],
        ),
      ),);
  }
}

login() {
}
