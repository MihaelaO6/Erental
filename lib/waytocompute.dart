import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  var _value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RENTAL",
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              " ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Hind'),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {   Navigator.pushNamed(context, 'choose');},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.person_rounded),
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.deepPurpleAccent[400],
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/cov.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            //   color: Colors.deepPurple,
            padding: const EdgeInsets.only(top: 120.0, left: 16, right: 8),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Text(
                        "Choose a way to compute the bill:",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            backgroundColor:  Colors.purple[200],),
                      ),
                    ),
                    padding: const EdgeInsets.only(top: 5.0),
                  ),
                  Container(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (_) {
                            setState(() {
                              _value = 1;
                            });
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "km",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Hind',
                        ),
                      ),
                    ],
                  ),
                  Container(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (_) {
                            setState(() {
                              _value = 2;
                            });
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "days",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Hind',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 330,
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              child: Column(
                                children: [
                                  Text(
                                    "How many days do you want to rent the vehicle for?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 150,
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.purple.shade100,
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          )),
                                      hintText: 'days',
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(2)),
                                      contentPadding: EdgeInsets.all(8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(210, 130, 0, 0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'waytopay');
                        },
                        child: Text(
                          "next",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Hind',
                          ),
                        ),
                        color: Colors.lightBlue[400],
                      )),
                ],
              ),
            ),
          ), //container
        ), //scaffold
      ), //material
    ); //materialapp
  }
}
