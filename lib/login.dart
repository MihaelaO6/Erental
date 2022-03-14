import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[400],
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),

          child:    Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 120,right: 35),
                child: new Image.asset('assets/logo.png'),
                alignment: Alignment.center,
                height: 300,
                width: 300,
              ),
              Container(
                padding: EdgeInsets.only(left: 35, top: 250),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 35, top: 290),
                child: Text(
                  'HI there! Nice to see you again.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.425,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      /* Text(
                      "E-mail",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    //    height: 1.2,
                      ),
                    ),*/
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.purple.shade100,
                            filled: true,
                            hintText: 'E-mail',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      /*   Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                  //      height: 1.0,
                      ),
                    ),*/
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.purple.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 75,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              //     fontWeight: FontWeight.w700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffd391ea),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pushNamed(context, 'choose');
                              },
                              icon: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Column(
                        //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'signin');
                            },
                            child: Text(
                              'or create account...',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'signin');
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),),
      ),
    );
  }
}
