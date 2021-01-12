import 'package:dyet/authentication/auth.dart';
import 'package:dyet/shared/constant_decoration.dart';
import 'package:flutter/material.dart';
import 'package:dyet/Screens/dashboard.dart';
import 'package:dyet/services/loadingscreen.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  // text field state
  String email = '';
  String password = '';
  String error = '';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                'SignIn',
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'Poppins', fontSize: 15),
              ),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  label: Text(
                    'SignUp',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),
            body: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Let\'s get you In',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontFamily: 'Poppins'),
                            ),
                            Form(
                              key: _formkey,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    decoration: TextInputDecoration.copyWith(
                                        hintText: 'Enter Email'),
                                    validator: (val) =>
                                        val.isEmpty ? 'Enter Your Email' : null,
                                    onChanged: (val) {
                                      setState(() {
                                        email = val;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    decoration: TextInputDecoration.copyWith(
                                        hintText: 'Enter Your Password'),
                                    validator: (val) => val.length < 6
                                        ? 'Wrong Password'
                                        : null,
                                    obscureText: true,
                                    onChanged: (val) {
                                      setState(() {
                                        password = val;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  RaisedButton(
                                    color: Colors.green,
                                    child: Text(
                                      'Sign   In',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () async {
                                      setState(() {
                                        loading = true;
                                      });
                                      if (_formkey.currentState.validate()) {
                                        dynamic result = await _auth
                                            .SignInWithEmailAndPassword(
                                                email, password);
                                        if (result == null) {
                                          setState(() {
                                            error =
                                                'Could Not Sign In with those Credentials';
                                          });
                                        }else
                                          {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Dashboard(),
                                                ));
                                          }
                                      }
                                      setState(() {
                                        loading = false;
                                      });
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => Dashboard(),
                                      //     ));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
