import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'feedback Message.dart';
class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Feedback'),
      ),

      body: SingleChildScrollView(

        child: Column(
          children: [
            const SizedBox(height: 35,),
            Container(
              height: size.height*.35,
              child:
              Image.asset('Images/feedback.jpg',
                fit: BoxFit.fill
                ,
              )
            ),
            const SizedBox(height: 35,),
            Text('Rating'),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.green,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
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
                        hintText: 'Enter your feedback if any',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),

                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Feed_Message()));
                          },
                          child: Text('Submit',style: TextStyle(fontSize: 19),),
                          style: ElevatedButton.styleFrom(fixedSize: Size(100, 55),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.green),
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
