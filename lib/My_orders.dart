import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Details_of%20_Order.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/Profile.dart';
import 'package:helloworld/notification.dart';

class My_Orders extends StatefulWidget {
  const My_Orders({Key? key}) : super(key: key);

  @override
  State<My_Orders> createState() => _My_OrdersState();
}

class _My_OrdersState extends State<My_Orders> {
  int currentTab = 2;
  final List<Widget> screen =[
    const HomePage(),
    const ClassNotify(),
    const My_Orders(),
    const Profile(),

  ];

  Widget currentScreen = const My_Orders();
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
                    //   width: 60,
                    // ),
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

    body: Padding(
      padding: const EdgeInsets.all(5),
      child: ListView.separated(
      itemBuilder: (context,index){
      return ListTile(
      leading: const CircleAvatar(
      backgroundColor: Colors.green,
      child: Icon(Icons.label_important, size: 25,color: Colors.white,)
      ) ,
      title: const Text("orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      subtitle: const Text("Order Date"),
      //trailing: Text('Expire Date'),
      trailing: //Text('More'),
      const Icon(Icons.keyboard_arrow_right_sharp),
      onTap: () {
//Navigator pushes FirstScreen.
      Navigator.push(context, MaterialPageRoute(builder: (context) => const List_orders(),),);
      },
      );
      },
      separatorBuilder: (context, index) {
      return const Divider(height: 30, thickness: 1,);
      },
      itemCount: 13,

      ),
      ),



    );
    }
    }

