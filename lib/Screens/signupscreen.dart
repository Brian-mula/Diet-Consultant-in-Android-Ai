import 'package:dyet/Screens/dashboard.dart';
import 'package:dyet/shared/constant_decoration.dart';
import 'package:flutter/material.dart';
import 'package:dyet/authentication/auth.dart';
import 'package:dyet/services/loadingscreen.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                'SignUp',
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'Poppins', fontSize: 15),
              ),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  label: Text(
                    'SignIn',
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
                              'Welcome To Dyet',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Let\'s get started',
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
                                        hintText: 'Enter Your Email'),
                                    validator: (val) =>
                                        val.isEmpty ? 'Enter valid Email' : null,
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
                                    obscureText: true,
                                    validator: (val) => val.length < 6
                                        ? 'Enter password +6 chars long'
                                        : null,
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
                                      'Sign Up',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () async {
                                      setState(() {
                                        loading = true;
                                      });
                                      if (_formkey.currentState.validate()) {
                                        dynamic result = await _auth
                                            .RegisterWithEmailAndPassword(
                                                email, password);
                                        if (result == null) {
                                          setState(() {
                                            error =
                                                'please supply a valid email & password';
                                          });
                                        }
                                        else{
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
                                    },
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    error,
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 14),
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
