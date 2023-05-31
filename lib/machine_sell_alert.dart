import 'package:flutter/material.dart';
import 'package:helloworld/Machine.dart';
import 'package:helloworld/machine_sell.dart';

class alert_sell_machine extends StatefulWidget {
  const alert_sell_machine({Key? key}) : super(key: key);

  @override
  State<alert_sell_machine> createState() => _alert_sell_machineState();
}

class _alert_sell_machineState extends State<alert_sell_machine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           /* Image.asset("Images/tick.png",
              height: 50,
              width: 100,
              alignment: Alignment.topCenter,),*/
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text("Do you have Machines to sell?",textAlign: TextAlign.center,selectionColor: Colors.green,),

            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell_Machine(),
              ));
            },
              style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.green,fixedSize: Size(200, 50)),
              child: Text("Yes",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 35,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine(),));
            },
              style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.green,fixedSize: Size(200, 50)),
              child: Text("No",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),);
  }
}
