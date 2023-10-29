import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/login_page.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: new AppBar(
            title: Text("My profil"),
            backgroundColor: Colors.blue,
          ),
          
          
          
          body: SafeArea(
              child: Column(
            children: [
              Image(image: AssetImage('assets/profil.jpg',),height: 300),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("Muhammad Rifqi Mubarok")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [Icon(Icons.phone), Text("085724447656")],
                  ),
                  Column(
                    children: [Icon(Icons.mail), Text("rifqikedungjati@gmail.com")],
                  ),
                 
                ],
                
              ),
              SizedBox(height: 40,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                 children: [
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ));
                    },
                    
                    child: Text("Kembali")),
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    child: Text("Logout")),
                 ],
               )
            ],
          )),
        ));
  }
}