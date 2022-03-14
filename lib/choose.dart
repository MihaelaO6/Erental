import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
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
          //  backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_rounded),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.deepPurpleAccent[400],
        ),

        backgroundColor: Colors.deepPurpleAccent[400],

        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/cov.jpg'), fit: BoxFit.cover)),
          child:Column(

            children: [

              SizedBox(height: 60,),

              Container(
                  child: Material(
                    color: Colors.purple[200],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Text("What do you want to rent?",style:
                    TextStyle(fontSize: 28,color: Colors.black, fontWeight: FontWeight.bold,
                    ),),
                  )
              ),
              SizedBox(height:70,),

              Row(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 43,),
                    child: Material(
                      color: Colors.purple[200],
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){
                          Navigator.pushNamed(context, 'scooterbrand');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/sc.jpg'),
                              height: 180,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("e-scooter",style: TextStyle(fontSize:20,color: Colors.black, fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 6,),
                          ],
                        )  ,
                      ),
                    ),),],),
              SizedBox(height: 20,),

              Row(
                children: [
                  SizedBox(height: 50,),

                  Container(
                    padding: EdgeInsets.only(left: 47,),
                    child: Material(
                      color: Colors.purple[200],
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){
                          Navigator.pushNamed(context, 'bikebrand');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  'assets/bike.jpg'),
                              height: 180,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("bicycle",style: TextStyle(fontSize:20,color: Colors.black,                  fontWeight: FontWeight.bold,
                            ),),
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
