import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body:
        Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        label: Text("product Name"),
                        // hintText: "Enter your Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ))

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        label: Text("quantity"),
                        // hintText: "Enter the number of items needed",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ))

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        label: Text(""),
                        hintText: "Total price you will get",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ))

                ),
              ),

            ]
        )
    )


    );
  }
}
