import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'Home.dart';

class ClassNotify extends StatefulWidget {
  const ClassNotify({Key? key}) : super(key: key);

  @override
  State<ClassNotify> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<ClassNotify> {

  int currentTab = 1;
  final List<Widget> screen =[
    HomePage(),
    ClassNotify(),
    Profile(),

  ];

  Widget currentScreen = ClassNotify();

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
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Notifications',),

        ),

        body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.notifications, size: 25,color: Colors.white,)
                ) ,
                title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
                trailing: Text('time '),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(height: 30, thickness: 1,);
            },
            itemCount: 13,

          ),
        )


    );
  }
}
