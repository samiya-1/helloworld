import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'Home.dart';
import 'Scheme_Details.dart';

class Gov_scheme extends StatefulWidget {
  const Gov_scheme({Key? key}) : super(key: key);

  @override
  State<Gov_scheme> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<Gov_scheme> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Goverment schemes',),

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
                  title: Text("Scheme",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  subtitle: Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
                 // trailing: Text('Expire Date'),
                  trailing: //Text('More'),
                  Icon(Icons.keyboard_arrow_right_sharp),
                  onTap: () {
//Navigator pushes FirstScreen.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Scheme_Details(),
                      ),
                    );
                  },
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
