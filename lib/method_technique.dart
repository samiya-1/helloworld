import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/API.dart';

import 'methodTechnique_Details.dart';

class Method_Technique extends StatefulWidget {
  const Method_Technique({Key? key}) : super(key: key);

  @override
  State<Method_Technique> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<Method_Technique> {
  List _loaddata=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }
  _fetchData() async {
    var res = await Api()
        .getData('/api/allmethod');
    if (res.statusCode == 200) {
      var items = json.decode(res.body)['data'];
      print(items);
      setState(() {
        _loaddata = items;

      });
    } else {
      setState(() {
        _loaddata = [];
        Fluttertoast.showToast(
          msg:"Currently there is no data available",
          backgroundColor: Colors.grey,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Method and Techniques',),

        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: _loaddata.length,
          itemBuilder: (context,index){

            return Padding(
              padding: const EdgeInsets.only(top: 16,right: 12,left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // CircleAvatar(
                      //   backgroundColor: Colors.white,
                      //   child: Icon(Icons.notifications_outlined,color: Colors.green,size: 36,),
                      // ),
                      SizedBox(width: 16,),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(_loaddata[index]['fertilizer_name'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                            Text(_loaddata[index]['crop_name'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                            Text(_loaddata[index]['ingredients'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                            Text(_loaddata[index]['details'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),

                          ],
                        ),
                      ),
                      SizedBox(width: 14,),

                      Text(_loaddata[index]['measurement'],style: TextStyle(fontSize: 15))
                    ],
                  ),
                  SizedBox(height: 12,),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 2,
                  )
                ],
              ),
            );
          },


        )
//         body: Padding(
//             padding: EdgeInsets.all(5),
//             child: ListView.separated(
//               itemBuilder: (context,index){
//                 return ListTile(
//                   leading: CircleAvatar(
//                       backgroundColor: Colors.green,
//                       child: Icon(Icons.label_important, size: 25,color: Colors.white,)
//                   ) ,
//                   title: Text("Method Technique",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
//                   subtitle: Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
//                   //trailing: Text('more'),
//                   trailing: Icon(Icons.keyboard_arrow_right_sharp),
//                   onTap: () {
// //Navigator pushes FirstScreen.
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Method_Details(),),);
//                   },
//                 );
//               },
//               separatorBuilder: (context, index) {
//                 return Divider(height: 30, thickness: 1,);
//               },
//               itemCount: 13,
//
//             ),
//           ),



    );
  }
}
