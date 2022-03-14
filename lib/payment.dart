import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool agree = false;

  void _doSomething() {

    Navigator.pushNamed(context, 'thanks');

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          //  backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {   Navigator.pushNamed(context, 'waytopay');},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_rounded),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.deepPurpleAccent[400],
        ),
        //  backgroundColor: Colors.purple[200],
        body:Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),

          child:  Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 30),
                child: Text(
                  'Enter your information to coplete the payment:',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),

              SingleChildScrollView(
                child: Container(
                  //width: 300,
                  padding: EdgeInsets.only(top: 100, right: 45, left: 45),

                  child: Column(
                    children: [
                      Text(
                        "Payment amount:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 2.0,
                        ),
                      ),
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
                          hintText: 'payment amount',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Card number:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),

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
                          hintText: 'card number',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Name on card:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),

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
                          hintText: 'name on card',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      //red

                      SizedBox(
                        height: 60,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            child: Column(
                              children: [
                                Text(
                                  "Expiry date:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
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
                                    hintText: 'expiry date',
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
                          Container(
                            width: 140,
                            child: Column(
                              children: [
                                Text(
                                  "Security code:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextField(
                                  obscureText: true,
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
                                    hintText: 'security code',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    contentPadding: EdgeInsets.all(8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      //checkbox
                    ],
                  ),
                ),
              ),

              //   SingleChildScrollView(
              //     scrollDirection: Axis.vertical,
              //   child: Container(
              //
              //         width: double.infinity,
              //         margin: EdgeInsets.all(5),
              //         padding:  EdgeInsets.only(left: 35, top: 420),
              //         //height: double.infinity,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Flexible(child: Column(
              //             children: [
              //               TextField(
              //                 obscureText: true,
              //                 decoration: InputDecoration(
              //                   fillColor: Colors.purple.shade100,
              //                   filled: true,
              //                   focusedBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.white,
              //                       )),
              //                   enabledBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.black,
              //                       )),
              //                   hintText: 'name on card',
              //                   hintStyle: TextStyle(
              //                     color: Colors.black,
              //                   ),
              //                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              //                   contentPadding: EdgeInsets.all(8),),
              //
              //               ),
              //
              //             ],
              //           ),),
              //
              //           Flexible(child: Column(
              //             children: [
              //               TextField(
              //                 obscureText: true,
              //                 decoration: InputDecoration(
              //                   fillColor: Colors.purple.shade100,
              //                   filled: true,
              //                   focusedBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.white,
              //                       )),
              //                   enabledBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.black,
              //                       )),
              //                   hintText: 'name on card',
              //                   hintStyle: TextStyle(
              //                     color: Colors.black,
              //                   ),
              //                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              //                   contentPadding: EdgeInsets.all(8),),
              //
              //               ),
              //
              //             ],
              //           ),),
              //
              //
              //         ],
              //       ),
              //     ),
              // ),

              Container(
                padding: EdgeInsets.only(top: 590, left: 72),
                child: Text(
                  '  I have read and accept terms and conditions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 130, right: 30, left: 30),
                child:
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      Material(
                        child: Checkbox(
                          //checkbox button
                          value: agree,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          splashRadius: 90,

                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    //next button
                    onPressed: agree ? _doSomething : null,
                    child: Text(
                      'next',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[400],
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    ),
                  ),
                ]),
              ),
            ],
          ),),
      ),
    );
  }
}
