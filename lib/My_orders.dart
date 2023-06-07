import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/API.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/notification.dart';

import 'MyProfile.dart';

class My_Orders extends StatefulWidget {
   My_Orders({Key? key}) : super(key: key);

   @override
   // void initState() {
   //   // TODO: implement initState
   //   super.initState();
   //   _fetchData();
   @override
   State<My_Orders> createState() => _My_OrdersState();
   // }

}

class _My_OrdersState extends State<My_Orders> {
  int currentTab = 2;
  final List<Widget> screen =[
    HomePage(),
     ClassNotify(),
     My_Orders(),
     Profile(),

  ];

  Widget currentScreen =  My_Orders();
  List _loaddata=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }
  _fetchData() async {
    var res = await Api()
        .getData('/api/allMyOrder');
    if (res.statusCode == 200) {
      var items = json.decode(res.body)['data'];
      print(items);
      setState(() {
        _loaddata = items;

      });
    } else {
      setState(() {
        _loaddata = [];
        Fluttertoast.showToast(
          msg:"Currently there is no data available",
          backgroundColor: Colors.grey,
        );
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = const HomePage();
                    currentTab = 0;
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
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
                    currentScreen=ClassNotify();
                    currentTab = 1;
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassNotify()));

                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // new Image.asset('icon/notification.png',
                    //   height: 40,
                    //   width: 60,
                    // ),
                    Icon(Icons.notifications_outlined,size: 30,color: currentTab==1 ? Colors.green : Colors.black),
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
                    // new Image.asset('icon/notification.png',
                    //   height: 40,
                    // ),
                    //   width: 60,
                    Icon(Icons.shopping_cart_outlined,size: 30,color: currentTab==2 ? Colors.green : Colors.black),
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
    appBar: AppBar(
    backgroundColor: Colors.green,
    title: const Text('My orders',),

    ),

//     body: Padding(
//       padding: const EdgeInsets.all(5),
//       child: ListView.separated(
//       itemBuilder: (context,index){
//       return ListTile(
//       leading: const CircleAvatar(
//       backgroundColor: Colors.green,
//       child: Icon(Icons.label_important, size: 25,color: Colors.white,)
//       ) ,
//       title: const Text("orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
//       subtitle: const Text("Order Date"),
//       //trailing: Text('Expire Date'),
//       trailing: //Text('More'),
//       const Icon(Icons.keyboard_arrow_right_sharp),
//       onTap: () {
// //Navigator pushes FirstScreen.
//       Navigator.push(context, MaterialPageRoute(builder: (context) => const List_orders(),),);
//       },
//       );
//       },
//       separatorBuilder: (context, index) {
//       return const Divider(height: 30, thickness: 1,);
//       },
//       itemCount: 13,
//
//       ),
//       ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: _loaddata.length,
          itemBuilder: (context,index){
        return Padding(
    padding: const EdgeInsets.only(top: 16,right: 12,left: 12),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    CircleAvatar(
    backgroundColor: Colors.white,
    child: Icon(Icons.notifications_outlined,color: Colors.green,size: 36,),
    ),
    SizedBox(width: 16,),
    Expanded(
    flex: 6,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Text(_loaddata[index]['order_number'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
    ],
    ),
    ),
    SizedBox(width: 14,),

    Text(_loaddata[index]['order_item'],style: TextStyle(fontSize: 15)),
      SizedBox(height: 5,),

      Text(_loaddata[index]['quantity'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
      SizedBox(height: 5,),

      Text(_loaddata[index]['amount'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
      SizedBox(height: 5,),

      Text(_loaddata[index]['user'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),

    ],
    ),
    SizedBox(height: 12,),
    Divider(
    color: Colors.grey[300],
    thickness: 2,
    )
    ],
    ),
    );
    },


  )


    );
    }
    }

