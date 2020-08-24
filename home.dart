import 'package:flutter/material.dart';
import "package:flutter_statusbarcolor/flutter_statusbarcolor.dart";
import 'package:fluttertoast/fluttertoast.dart';

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  myt() {
    Fluttertoast.showToast(
        msg: "Abhishek's Profile !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.purple.shade400,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade100,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.purple.shade400,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.blue,
              width: 5,
            ),
          ),
          margin: EdgeInsets.all(50),
          // padding: EdgeInsets.only(left: 30),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          //color: Colors.purple.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Abhishek Raj",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white70,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text(
                    "  abhiraj19000@gmail.com",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        InkWell(
          //onTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/Abhishek19000/Profile_App/master/DSC_0239.JPG'),
                fit: BoxFit.contain,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.purple.shade400,
                width: 3,
              ),
            ),
            width: 100,
            height: 100,
            //color: Colors.blue,
            //child: Text("DevOps"),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile App",
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: null),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: myt,
          ),
        ],
        backgroundColor: Colors.purple.shade400,
      ),
      body: mybody,
    ),
  );
}
