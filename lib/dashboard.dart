import 'package:flutter/material.dart';
import 'package:flutter_application_1/profil.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.cyan,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
           MyPerson(),
           MyMenu(),
           MySchool(),
           MyActivity(),
             
          ],
        ),
      ),
    );
  }
}

class MyPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
      
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Person(),
                      ));
                },
                splashColor: Colors.cyan,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                      Icon(Icons.person_2_rounded, size: 100.0,),
                      Text("Profil", style : new TextStyle(fontSize: 20.0)),
                   ],
                  ),
                ),
              ),
           );
  }
}

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.cyan,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                      Icon(Icons.info_outline, size: 100.0,),
                      Text("Informasi", style : new TextStyle(fontSize: 20.0))
                   ]
                  ),
                ),
              ),
             );
  }
}

class MySchool extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.cyan,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                      Icon(Icons.account_balance, size: 100.0,),
                      Text("Perkuliahan", style : new TextStyle(fontSize: 20.0))
                   ]
                  ),
                ),
              ),
             );
  }
}

class MyActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.cyan,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                      Icon(Icons.info_outline, size: 100.0,),
                      Text("Activity", style : new TextStyle(fontSize: 20.0))
                   ]
                  ),
                ),
              ),
             );
  }
}

