
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';
import 'My_orders.dart';
import 'Welcome.dart';
import 'method_technique.dart';
import 'notification.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool isObscurePassword=true;

  int currentTab = 3;
  final List<Widget> screen =[
    const HomePage(),
    const ClassNotify(),
    const My_Orders(),
    const Profile(),

  ];

  Widget currentScreen = Profile();

  TextEditingController unameController=TextEditingController();
  TextEditingController plcController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController pwdController=TextEditingController();

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
                  currentScreen=const ClassNotify();
                  currentTab = 1;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ClassNotify()));

              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // new Image.asset('icon/notification.png',
                  //   height: 40,
                  //   width: 60,
                  // ),
                  const Icon(Icons.notifications_outlined,size: 30,),
                  Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==1 ? Colors.green : Colors.black),)
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen=My_Orders();
                  currentTab = 2;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Orders()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // new Image.asset('icon/user.png',
                  //   height: 35,
                  //   width: 55,
                  // ),
                  Icon(Icons.person_outline_outlined,size: 30,color: currentTab==2 ? Colors.green : Colors.black),
                  Text('My Orders',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==2 ? Colors.green : Colors.black),)
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen=Profile();
                  currentTab = 3;
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
                  Icon(Icons.person_outline_outlined,size: 30,color: currentTab==3 ? Colors.green : Colors.black),
                  Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==3 ? Colors.green : Colors.black),)
                ],
              ),
            ),
          ],
        ),
      ),



      body:  Container(
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
                                    color: Colors.green
                                ),
                                color: Colors.green
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
               /* SizedBox(height: 30,),

                buildTextField("Full name", "Sameea", false),
                buildTextField("Email", "opsameea@gmail.com", false),
                buildTextField("Password", "12345678", true),
                buildTextField("Place", "Kondotty", false),
                buildTextField("Age", "22", false),
                buildTextField("Phone Number", "9876543210", false),
                buildTextField("Gender", "prefer not to Say", false),

*/
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
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    ),
                    const SizedBox(height: 20,),

                  ],
                ),
                ElevatedButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
                  child: Text("LOG OUT",style: TextStyle(fontSize: 15, letterSpacing: 2, color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),
                )
              ],
            ),
          ),
     /*


    Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField){
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextFormField(
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
    );   ),*/

      ) );
  }
}
