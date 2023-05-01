import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/payment.dart';
import 'package:helloworld/product.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Product',),
        ),
        body: SingleChildScrollView(
          child: Stack(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
                                              },
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [

                                                  new Image.asset('Images/product.jpg',
                                                    height: 120,
                                                    width: 200,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                  Spacer(),
                                                  Text('Product1',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
                                              },
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [

                                                  new Image.asset('Images/product.jpg',
                                                    height: 120,
                                                    width: 200,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                  Spacer(),
                                                  Text('Product2',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
                                              },
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [

                                                  new Image.asset('Images/product.jpg',
                                                    height: 120,
                                                    width: 200,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                  Spacer(),
                                                  Text('Product3',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
                                              },
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [

                                                  new Image.asset('Images/product.jpg',
                                                    height: 120,
                                                    width: 200,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                  Spacer(),
                                                  Text('Product4',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
                                              },
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [

                                                  new Image.asset('Images/product.jpg',
                                                    height: 120,
                                                    width: 200,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                  Spacer(),
                                                  Text('Product5',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
                                              },
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [

                                                  new Image.asset('Images/product.jpg',
                                                    height: 120,
                                                    width: 200,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                  Spacer(),
                                                  Text('Product6',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
              ] ),
        )));
  }
}
