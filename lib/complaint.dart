import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Complaint extends StatefulWidget {
  const Complaint({Key? key}) : super(key: key);

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Complaint'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height*.35,
              child:
              Image.asset('Images/img_14.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 20),
              child: Container(
                height: 350.0,
                child: Stack(
                  children: [
                    TextField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: 'Please Explain breifly about your issue',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),

                      ),
                    ),



                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: (){

                          },
                          child: Text('Submit',style: TextStyle(fontSize: 19),),
                          style: ElevatedButton.styleFrom(fixedSize: Size(230, 55),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green),
                        ),
                      ),
                    )
                  ],
                ),

              ),


            ),
          ],
        ),
      ),

    );
  }
}
