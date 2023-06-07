// import 'package:flutter/material.dart';
// import 'package:helloworld/Home.dart';
// import 'package:helloworld/My_orders.dart';
// import 'package:helloworld/MyProfile.dart';
// import 'package:helloworld/Profile.dart';
// import 'package:helloworld/notification.dart';
//
// class BottomNavigationBar extends StatefulWidget {
//   const BottomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavigationBar> createState() => _BottomNavigationBarState();
// }
//
// class _BottomNavigationBarState extends State<BottomNavigationBar> {
//   TextEditingController searchController=TextEditingController();
//   int currentTab = 0;
//   final List<Widget> screen =[
//     const HomePage(),
//     const ClassNotify(),
//     const Profile(),
//      My_Orders(),
//   ];
//   Widget currentScreen = const HomePage();
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(bottomNavigationBar: Container(
//       padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
//       height: 80,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 currentScreen = HomePage();
//                 currentTab = 0;
//               });
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//
//                 Icon(Icons.home_outlined,size: 30,color: currentTab==0 ? Colors.green : Colors.black,),
//                 /*  new Image.asset('icon/home.png',
//                     height: 35,
//                     width: 55,
//                   ),
//                  */
//                 Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==0 ? Colors.green : Colors.black),)
//               ],
//             ),
//           ),
//
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 currentScreen=ClassNotify();
//                 currentTab = 1;
//               });
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassNotify()));
//
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//
//                 Icon(Icons.notifications_outlined,size: 30,color: currentTab==1 ? Colors.green : Colors.black),
//                 Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==1 ? Colors.green : Colors.black),)
//
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 currentScreen = My_Orders();
//                 currentTab = 2;
//               });
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Orders()));
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//
//                 Icon(Icons.shopping_cart_outlined,size: 30,color: currentTab==2 ? Colors.green : Colors.black,),
//
//                 Text('My Orders',style: TextStyle(fontWeight:FontWeight.bold,color: currentTab==2 ? Colors.green : Colors.black),)
//
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 currentScreen=Profile();
//                 currentTab = 3;
//               });
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 // new Image.asset('icon/user.png',
//                 //   height: 35,
//                 //   width: 55,
//                 // ),
//                 Icon(Icons.person_outline_outlined,size: 30,color: currentTab==2 ? Colors.green : Colors.black),
//                 Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==2 ? Colors.green : Colors.black),)
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),);
//   }
// }
