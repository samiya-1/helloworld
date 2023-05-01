import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/payment.dart';
import 'package:helloworld/product.dart';

import 'Machine.dart';

class Machines extends StatefulWidget {
  const Machines({Key? key}) : super(key: key);

  @override
  State<Machines> createState() => _MachinesState();
}

class _MachinesState extends State<Machines> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Machines',),
        ),
        body: Stack(
            children: [
              Container(
                // height: size.height * .45,
                  decoration: BoxDecoration(
                    color: Colors.green,)
              ),
              SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                new Image.asset('Images/New_Machines.jpg',
                                                  height: 120,
                                                  width: 200,
                                                  alignment: Alignment.topCenter,
                                                ),
                                                Spacer(),
                                                Text('Machine1',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                new Image.asset('Images/New_Machines.jpg',
                                                  height: 120,
                                                  width: 200,
                                                  alignment: Alignment.topCenter,
                                                ),
                                                Spacer(),
                                                Text('Machine2',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                new Image.asset('Images/New_Machines.jpg',
                                                  height: 120,
                                                  width: 200,
                                                  alignment: Alignment.topCenter,
                                                ),
                                                Spacer(),
                                                Text('Machine3',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                new Image.asset('Images/New_Machines.jpg',
                                                  height: 120,
                                                  width: 200,
                                                  alignment: Alignment.topCenter,
                                                ),
                                                Spacer(),
                                                Text('Machine4',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                new Image.asset('Images/New_Machines.jpg',
                                                  height: 120,
                                                  width: 200,
                                                  alignment: Alignment.topCenter,
                                                ),
                                                Spacer(),
                                                Text('Machine5',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                new Image.asset('Images/New_Machines.jpg',
                                                  height: 120,
                                                  width: 200,
                                                  alignment: Alignment.topCenter,
                                                ),
                                                Spacer(),
                                                Text('Machine6',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ] )
                            )
                          ] )
                  )
              )
            ] )));
  }
}
