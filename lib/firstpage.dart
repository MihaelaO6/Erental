import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cov.jpg'), fit: BoxFit.fill)),
      //     debugShowCheckedModeBanner: false,
      //     title: "RENTAL",
      // home: Material(
      child: Scaffold(
        body:
        Container(
          decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),

          padding: const EdgeInsets.only(top: 200.0, left: 50, right: 50),
          //       color: Colors.purpleAccent[100],
          child: Column(
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Hind'),
              ),
              Container(
                // color: Colors.deepPurpleAccent[100],
                child: new Image.asset('assets/logo.png'),
                alignment: Alignment.center,
                height: 320,
                width: 300,
              ),
              Container(
                padding: const EdgeInsets.only(top: 100.0, left: 50, right: 50),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  child: Text(
                    "start",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Hind',
                    ),
                  ),
                  color: Colors.green[400],
                ),
              ),
            ],
          ),),),
      //),

    );
  }

}