import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
         leading: Icon(Icons.menu),
         actions: [
           Icon(Icons.favorite),
           Icon(Icons.shopping_cart),
         ],
      ),
         body: Container(
        height: 100,
        width: 100,
           child:
           Center(child: Text("hello world")))
    );
  }



}

