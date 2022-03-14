import 'package:flutter/material.dart';

class Bike extends StatefulWidget {
  const Bike({Key? key}) : super(key: key);

  @override
  _BikeState createState() => _BikeState();
}

class _BikeState extends State<Bike> {
  bool agree=false;
  void _doSomething() {
    // Do something
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_rounded),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.deepPurpleAccent[400],
        ),

        //  backgroundColor: Colors.purpleAccent[100],

        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),

          child:Column(

            children: [

              SizedBox(height: 80,),

              Container(
                child: Material(
                  //color: Colors.purpleAccent,
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Text(" Choose brand for your bicycle: ",style: TextStyle(fontSize: 27,color: Colors.black),),
                ),
              ),

              SizedBox(height: 80),

              Row(
                children: [
                  SizedBox(width: 30,),
                  Container(
                    child: Material(
                      color: Colors.purple[200],
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){
                          Navigator.pushNamed(context, 'waytocompute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/bike111.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("bicycle1",style: TextStyle(fontSize:15,color: Colors.black),),
                            SizedBox(height: 6,),




                          ],
                        )  ,
                      ),
                    ),
                  ),

                  SizedBox(width: 50,),


                  Container(
                    child: Material(
                      color: Colors.purple[200],
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){
                          Navigator.pushNamed(context, 'waytocompute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/bike11.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("bicycle2",style: TextStyle(fontSize:15,color: Colors.black),),
                            SizedBox(height: 6,),
                          ],
                        )  ,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),

              Row(
                children: [
                  SizedBox(width: 30,),
                  Container(
                    child: Material(
                      color: Colors.purple[200],
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){                              Navigator.pushNamed(context, 'waytocompute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/bike5.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("bicycle3",style: TextStyle(fontSize:15,color: Colors.black),),
                            SizedBox(height: 6,),




                          ],
                        )  ,
                      ),
                    ),
                  ),

                  SizedBox(width: 45,),


                  Container(
                    child: Material(
                      color: Colors.purple[200],
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){                              Navigator.pushNamed(context, 'waytocompute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/bike33.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("bicycle4",style: TextStyle(fontSize:15,color: Colors.black),),
                            SizedBox(height: 6,),
                          ],
                        )  ,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
