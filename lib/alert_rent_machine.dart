import 'package:flutter/material.dart';
import 'package:helloworld/Machine.dart';
import 'package:helloworld/rent_machine.dart';

class alert_rent_machine extends StatefulWidget {
  const alert_rent_machine({Key? key}) : super(key: key);

  @override
  State<alert_rent_machine> createState() => _alert_rent_machineState();
}

class _alert_rent_machineState extends State<alert_rent_machine> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Image.asset("Images/tick.png",
              height: 50,
              width: 100,
              alignment: Alignment.topCenter,),*/
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text("Do you have Machines to Rent?",textAlign: TextAlign.center,selectionColor: Colors.green,),

            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Rent_Machine(),));
            },
              style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.green,fixedSize: Size(200, 50)),
              child: const Text("Yes",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 35,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Machine(),));
            },
              style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),primary: Colors.green,fixedSize: Size(200, 50)),
              child: const Text("No",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
