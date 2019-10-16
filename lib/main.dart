import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
         child: Container(
           color: Colors.white,
           child: Padding(
             padding: const EdgeInsets.all(36.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 SizedBox(
                   height: 155.0,
                   child: Image.asset('images/Communication-icon.png',fit: BoxFit.contain,),
                 ),
                 SizedBox(
                   height: 45.0,
                 ),
                    emailField,
                 SizedBox(
                   height: 25.0,
                 ),
                    passwordField,
                 SizedBox(
                   height: 35.0,
                 ),
                 loginButton,
                 SizedBox(
                   height: 45.0,
                 )
               ],
             ),
           ),
         ),
        )
      ),
    );
  }
  final emailField = TextField(
    obscureText: true,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: 'Email/User Name',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(36.0)),
    ),
  );
  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: 'Password',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(36.0)),
    ),
  );
  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(36.0),
    color: Colors.blue,
    child: MaterialButton(
      //minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: (){},
      child: Text('Login',
          textAlign: TextAlign.center,
      ),
    ),
  );
}
