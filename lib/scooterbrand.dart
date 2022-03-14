import 'package:flutter/material.dart';

class Scooter extends StatefulWidget {
  const Scooter({Key? key}) : super(key: key);

  @override
  _ScooterState createState() => _ScooterState();
}

class _ScooterState extends State<Scooter> {
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

              SizedBox(height: 70,),

              Container(
                child: Material(
                  //color: Colors.purpleAccent,
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Text(" Choose brand for your scooter: ",style: TextStyle(fontSize: 27,color: Colors.black),),
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
                        onTap: (){                              Navigator.pushNamed(context, 'waytocompute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/s4.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("scooter1",style: TextStyle(fontSize:15,color: Colors.black),),
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
                                  'assets/s2.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("scooter2",style: TextStyle(fontSize:15,color: Colors.black),),
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
                        onTap: (){
                          Navigator.pushNamed(context, 'waytocompute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/scooter.jpg'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("scooter3",style: TextStyle(fontSize:15,color: Colors.black),),
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
                        onTap: (){
                          Navigator.pushNamed(context, 'waytocompute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/s3.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("scooter4",style: TextStyle(fontSize:15,color: Colors.black),),
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
