
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/API.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/Login.dart';

import 'Welcome.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool isObscurePassword=true;

  int currentTab = 2;
  final List<Widget> screen =[
    HomePage(),
    //ClassNotify(),
    Profile(),

  ];

  Widget currentScreen = Profile();

  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phnController=TextEditingController();
  TextEditingController addController=TextEditingController();
  TextEditingController gendercontroller=TextEditingController();
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
      "phone_number": phnController.text,
      "address": addController.text,
      "gender": gendercontroller.toString(),
      "password": pwdController.text.trim(),
      "username": unameController.text.trim(),

    };
    print("patient data${data}");
    var res = await Api().authData(data,'api/patient_register');
    var body = json.decode(res.body);
    print('res${res}');
    if(body['success']==true)
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

    }
    else
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        /*leading: IconButton(onPressed: (){
            Navigator.pop(context);},
            icon: Icon(Icons.arrow_back),)*/),

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = HomePage();
                  currentTab = 0;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.home_outlined,size: 30,color: currentTab==0 ? Colors.green : Colors.black,),
                  /*  new Image.asset('icon/home.png',
                    height: 35,
                    width: 55,
                  ),
                 */
                  Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==0 ? Colors.green : Colors.black),)
                ],
              ),
            ),


            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen=Profile();
                  currentTab = 2;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // new Image.asset('icon/user.png',
                  //   height: 35,
                  //   width: 55,
                  // ),
                  Icon(Icons.person_outline_outlined,size: 30,color: currentTab==2 ? Colors.green : Colors.black),
                  Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==2 ? Colors.green : Colors.black),)
                ],
              ),
            ),
          ],
        ),
      ),

      /* appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            tooltip: "Logout",
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()));
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),*/

      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1)
                            )
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://img.freepik.com/free-vector/floral-card_53876-91231.jpg?w=740&t=st=1681369034~exp=1681369634~hmac=f00daee6ef31a896aa1c59adc0d765796be5d0ebf354eeda91c912eb211dbc30'
                            ),
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4,
                                  color: Colors.white
                              ),
                              color: Colors.blue
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          )
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 30,),

              buildTextField("Full name", "Sameea", false,nameController),
              buildTextField("Age", "22", false,ageController),
              buildTextField("Email", "sameea@gmail.com", true,emailController),
              buildTextField("PhoneNumber", "9876543210", false,phnController),
              buildTextField("Address", "Calicut", false,addController),
              buildTextField("Gender", "Female", false,gendercontroller),
              buildTextField("Password", "123456", true,pwdController),
              buildTextField("Username", "Sameea123", false,unameController),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    },
                    child: Text("CANCEL",style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.black
                    )),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  ),

                  ElevatedButton(
                    onPressed: (){},
                    child: Text("SUBMIT",style: TextStyle(fontSize: 15, letterSpacing: 2, color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }

  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField,TextEditingController controller){
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextFormField(
        controller: controller,
        obscureText: isPasswordTextField ? isObscurePassword: false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField ?
            IconButton(
              onPressed: () {
                setState(() {
                  isObscurePassword=!isObscurePassword;
                });
              },
              icon: Icon(Icons.remove_red_eye,color: Colors.grey,),
            ):null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey
            )

        ),
      ),
    );
  }
}
