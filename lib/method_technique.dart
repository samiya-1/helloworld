import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'Home.dart';

class Method_Technique extends StatefulWidget {
  const Method_Technique({Key? key}) : super(key: key);

  @override
  State<Method_Technique> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<Method_Technique> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Method_Technique',),

        ),

        body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.label_important, size: 25,color: Colors.white,)
                ) ,
                title: Text("Method_Technique",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
               // trailing: Text(''),
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
