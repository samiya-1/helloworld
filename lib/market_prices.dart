import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'Home.dart';

class MarketPrice extends StatefulWidget {
  const MarketPrice({Key? key}) : super(key: key);

  @override
  State<MarketPrice> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<MarketPrice> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Market prices',),

        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: ListView.separated(
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.price_check, size: 25,color: Colors.white,)
                  ) ,
                  title: Text("Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  subtitle: Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
                  trailing: Text('Market price '),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: 30, thickness: 1,);
              },
              itemCount: 13,

            ),
          ),
        )


    );
  }
}
