import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'Home.dart';

class Pay_Details extends StatefulWidget {
  const Pay_Details({Key? key}) : super(key: key);

  @override
  State<Pay_Details> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<Pay_Details> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Payment Details',),
        ),

        body:  Padding(
            padding: EdgeInsets.all(5),
            child: ListView.separated(
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.label_important, size: 25,color: Colors.white,)
                  ) ,
                  title: Text("Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  subtitle: Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
                  trailing: Text('Date'),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: 30, thickness: 1,);
              },
              itemCount: 13,

            ),
          ),



    );
  }
}
