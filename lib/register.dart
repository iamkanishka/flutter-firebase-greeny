import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                        FlatButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.blueAccent,
                          onPressed: () {
                            print(emailController.text);
                            print(passController.text);
                            Navigator.of(context).pushNamed('/Register');
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        )
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
