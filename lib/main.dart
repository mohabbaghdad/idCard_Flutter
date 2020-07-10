import 'package:flutter/material.dart';
import 'package:id_project/text1.dart';
import 'package:id_project/text2.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int numProj= 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ID-Card",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          elevation: 0.0,
        ),
        backgroundColor: Colors.grey[900],
        floatingActionButton: FloatingActionButton(
            onPressed: ()=> setState((){
            numProj++;
        }),
          backgroundColor: Colors.grey[800],
          child:Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('Assets/mike.jpg'),
                  radius: 50,
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 90,
              ),
              Text1(
                textName: "Name",
              ),
              SizedBox(
                height: 10,
              ),
              Text2(
                textName: "Mike",
                fontSize: 28,
              ),
              SizedBox(
                height: 40,
              ),
              Text1(
                textName: "Number of Projects",
              ),
              SizedBox(
                height: 10,
              ),
              Text2(
                textName: "${numProj}",
                fontSize: 28,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text1(
                    textName: "Mike1@gmail.com",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

