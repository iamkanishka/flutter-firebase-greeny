import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'home.dart';
import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomePage(),
        '/register': (BuildContext context) => new RegisterPage()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Kanishka Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("SARS",
                        style: new TextStyle(
                            color: Colors.lightGreen, fontSize: 60.0)),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 15.0),
                    TextField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Forget Password?...",
                            style: new TextStyle(
                                color: Colors.lightGreen, fontSize: 15.0)),

                        Text("New User?...",
                            style: new TextStyle(
                                color: Colors.lightGreen, fontSize: 15.0)),

                        // FloatingActionButton(
                        //   onPressed: _incrementCounter,
                        //   tooltip: 'Increment',
                        //   child: Icon(Icons.arrow_right),
                        // ),

                        //               RaisedButton(
                        //   onPressed: () {},
                        //   child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                        // ),
                      ],
                    ),
                    SizedBox(height: 25.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // FlatButton(
                        //   color: Colors.blue,
                        //   textColor: Colors.white,
                        //   disabledColor: Colors.grey,
                        //   disabledTextColor: Colors.black,
                        //   padding: EdgeInsets.all(8.0),
                        //   splashColor: Colors.blueAccent,
                        //   onPressed: () {
                        //     print(emailController.text);
                        //     print(passController.text);
                        //     Navigator.of(context).pushNamed('/home');
                        //   },
                        //   child: Text(
                        //     "Login",
                        //     style: TextStyle(fontSize: 15.0),
                        //   ),
                        // )
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.blue)),
                          color: Colors.white,
                          textColor: Colors.blue,
                          padding: EdgeInsets.all(10.0),
                          onPressed: () {
                            print(emailController.text);
                            print(passController.text);
                            Navigator.of(context).pushNamed('/home');
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                // child: TextField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Password',
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
