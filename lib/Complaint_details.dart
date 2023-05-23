import 'package:flutter/material.dart';
import 'package:helloworld/complaint.dart';

import 'Complaint_Message.dart';
import 'Edit_Profile.dart';
import 'Home.dart';

class Complaint_Details extends StatefulWidget {
  const Complaint_Details({Key? key}) : super(key: key);

  @override
  State<Complaint_Details> createState() => _Complaint_DetailsState();
}

class _Complaint_DetailsState extends State<Complaint_Details> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Complaint_Details',),

        ),

        body:  Padding(
            padding: EdgeInsets.all(5),
            child: ListView.separated(
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.reviews, size: 25,color: Colors.white,)
                  ) ,
                  title: Text("Complaints",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
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


    floatingActionButton: FloatingActionButton.extended(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Complaint(),));

    },
    label: const Text('New'),
    icon: const Icon(Icons.add),
    backgroundColor: Colors.green,
    ),

    );
  }
}
