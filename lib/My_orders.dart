import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'Home.dart';
import 'Order_Details.dart';
import 'notification.dart';

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
    const Profile(),
    const My_Orders(),
  ];

  Widget currentScreen = const My_Orders();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    subtitle: const Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
    // trailing: Text('Expire Date'),
    trailing: //Text('More'),
    const Icon(Icons.keyboard_arrow_right_sharp),
    onTap: () {
//Navigator pushes FirstScreen.
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => const Order_Details(),
    ),
    );
    },
    );
    },
    separatorBuilder: (context, index) {
    return const Divider(height: 30, thickness: 1,);
    },
    itemCount: 13,

    ),
    )


    );
    }
    }

