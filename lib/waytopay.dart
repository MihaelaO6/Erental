import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  var _value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exams APPLICATION",
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
              onPressed: () {   Navigator.pushNamed(context, 'waytocompute');},
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
            padding: const EdgeInsets.only(top: 170.0, left: 20),
            child: Column(
              children: [
                Column(
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
                          "Choose a way to pay the bill:",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              backgroundColor:  Colors.purple[200]),
                        ),
                      ),
                      padding: const EdgeInsets.only(top: 5.0, right: 6),
                    ),
                  ],
                ),
                Container(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          Navigator.pushNamed(context, 'thanks');

                          setState(() {
                            _value = 1;
                          });
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "cash",
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
                      "credit card",
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
                Padding(
                    padding: EdgeInsets.fromLTRB(190, 250, 0, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'payment');
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
                      color: Colors.lightBlue[200],
                    )),
              ],
            ),
          ),
        ), //scaffold
      ), //material
    ); //materialapp
  }
}
