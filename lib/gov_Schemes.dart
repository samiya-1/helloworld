import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/API.dart';
import 'package:helloworld/Scheme_Details.dart';

class Gov_scheme extends StatefulWidget {
  const Gov_scheme({Key? key}) : super(key: key);

  @override
  State<Gov_scheme> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<Gov_scheme> {
  List _loaddata=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }
  _fetchData() async {
    var res = await Api()
        .getData('/api/payment');
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
          title: Text('Goverment schemes',),

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
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.notifications_outlined,color: Colors.green,size: 36,),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(_loaddata[index]['govscheme_name'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                            Text(_loaddata[index]['date'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                            Text(_loaddata[index]['dateto'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                            Text(_loaddata[index]['Type'],style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),

                          ],
                        ),
                      ),
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
    );
  }
}
