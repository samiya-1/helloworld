import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/API.dart';
import 'package:helloworld/Add_product.dart';
import 'package:helloworld/product.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
List _loaddata=[];

  _fetchData() async {
    var res = await Api()
        .getData('/api/allProduct');
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
          backgroundColor: Colors.black,
        );
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Product',),
        ),
        body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    // height: size.height * .45,
                      decoration: BoxDecoration(
                        color: Colors.green,)
                  ),
                ),
                SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200,
    childAspectRatio: 3 / 2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20),
    itemCount: _loaddata.length,
    itemBuilder: (BuildContext ctx, index) {
      return
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 14,
                    spreadRadius: -23
                )
              ]
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Product()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Image.network('https://picsum.photos/250?image=9',height: 50,
                     width: 200,),

                  Spacer(),
                  Text(_loaddata[index]['product_name'], textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),)

                ],

              ),
            ),
          ),
        );
    }

                                          ),
                                        ),
                                      ] )
                              )


                )
        ]
                ),
            floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProduct(),));

    },
      label: const Text('Add New Product'),
      icon: const Icon(Icons.add),
      backgroundColor: Colors.green,
    ),
                    )

    );
  }
}
