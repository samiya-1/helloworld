import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meth_Tech_Details extends StatefulWidget {
  const Meth_Tech_Details({Key? key}) : super(key: key);

  @override
  State<Meth_Tech_Details> createState() => _Meth_Tech_DetailsState();
}

class _Meth_Tech_DetailsState extends State<Meth_Tech_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Method and Techniques Details")),
      body: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("Method and Technique name $index"));

          }),
    );
  }
}
