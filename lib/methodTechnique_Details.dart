import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Method_Details extends StatefulWidget {
  const Method_Details({Key? key}) : super(key: key);

  @override
  State<Method_Details> createState() => _Method_DetailsState();
}

class _Method_DetailsState extends State<Method_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text('method and techniques'),
    ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Text("method and techniques Details",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            /*Align(
              alignment: Alignment.topLeft,
              child: Text("",style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
            ),*/
            // SizedBox(height: 35,),
            Image.asset(
              "Images/method and Technique.jpg",
              width: 540.0,
              height: 350.0,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Name of method"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Ingredients"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),



            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Quantity"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("How to Apply to"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("For what plant to be applied"),
              // hintText: "Enter Product Name",
              /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)*/
            ),
            // SizedBox(height: 35,),
            // ElevatedButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Scheme_Message()));
            // },
            //   style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green
            //       ,fixedSize: Size(350, 57)),
            //   child: Text("Apply",style: TextStyle(
            //       fontSize: 18,color: Colors.white
            //   ),),),
          ],),
      ),);
  }
}
