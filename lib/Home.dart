import 'package:helloworld/chats.dart';
import 'package:helloworld/feedback.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/gov_Schemes.dart';
import 'package:helloworld/machines.dart';
import 'package:helloworld/market_prices.dart';
import 'package:helloworld/notification.dart';
import 'package:helloworld/Profile.dart';
import 'package:helloworld/payment.dart';
import 'package:helloworld/payment_details.dart';
import 'package:helloworld/product.dart';
import 'package:helloworld/products.dart';

import 'My_orders.dart';
import 'homepage.dart';
import 'Complaint_details.dart';
import 'complaint.dart';
import 'method_technique.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController searchController=TextEditingController();
  int currentTab = 0;
  final List<Widget> screen =[
    const HomePage(),
    const ClassNotify(),
    const Profile(),
    const My_Orders(),
  ];

  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    return Scaffold(

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
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

                  Text('Home',style: TextStyle(fontWeight:FontWeight.bold,color: currentTab==2 ? Colors.green : Colors.black),)

                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen=ClassNotify();
                  currentTab = 1;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassNotify()));

              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.notifications_outlined,size: 30,color: currentTab==1 ? Colors.green : Colors.black),
                  Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==1 ? Colors.green : Colors.black),)

                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = My_Orders();
                  currentTab = 0;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Orders()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.shopping_cart_outlined,size: 30,color: currentTab==0 ? Colors.green : Colors.black,),

                  Text('My Orders',style: TextStyle(fontWeight:FontWeight.bold,color: currentTab==2 ? Colors.green : Colors.black),)

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

                  Icon(Icons.person_outline_outlined,size: 30,color: currentTab==3 ? Colors.green : Colors.black),
                  Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==3 ? Colors.green : Colors.black),)
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.green,)
            ),
            SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  Text("Hi\nWelcome Back!",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                    decoration:BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          border: InputBorder.none
                      ),
                    ),
                  ),

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [

                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Products()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  new Image.asset('Images/Products.jpg',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.topCenter,
                                  ),
                                  Spacer(),
                                  Text('Products',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),


                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Machines()));
                              },
                              child: Column(
                                children: [

                                  new Image.asset('Images/machines.jpg',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Machines',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Gov_scheme()));
                              },
                              child: Column(

                                children: [

                                  new Image.asset('Images/Schemes.jpg',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Schemes',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MarketPrice()));
                              },
                              child: Column(
                                children: [

                                  Image.asset('Images/marketprice.jpg',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Market Price',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Method_Technique()));
                              },
                              child: Column(
                                children: [

                                  new Image.asset('Images/method and Technique.jpg',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Method Technique',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                              },
                              child: Column(
                                children: [

                                  new Image.asset('Images/img_8.png',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Chat',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Pay_Details()));
                              },
                              child: Column(
                                children: [

                                  Image.asset('Images/Payment.jpg',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Payment',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Complaint_Details()));
                              },
                              child: Column(
                                children: [

                                  new Image.asset('Images/img_12.png',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Complaint',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23
                                )
                              ]
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Rating()));
                              },
                              child: Column(
                                children: [

                                  new Image.asset('Images/img_15.png',
                                    height: 120,
                                    width: 200,
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text('FeedBack',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                ],
                              ),
                            ),
                          ),
                        ),

              ],
                              ),
                            ),
                      ],
                    ),
                  )

            ),
    ]  ),

    );








  }
}