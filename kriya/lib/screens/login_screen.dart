import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kriya/constant.dart';
import 'package:kriya/models/user.dart';
import 'package:kriya/screens/home_screen.dart';

import 'package:kriya/services/database.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode passwordFocusNode = FocusNode();

  var _formKey = GlobalKey<FormState>();
  bool showError = false;
  bool isLoading = false;

  void _submitForm() async {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      final User loggedInUser = await DatabaseService().loginUser(
        userName: userNameController.text,
        password: passwordController.text,
      );
      if (loggedInUser != null) {
        print('Login Successful');
        SharedPreferences userStorage=await SharedPreferences.getInstance();


        print('username is : ${loggedInUser.data.loginUserData.userName}');

        userStorage.setBool('isLoggedIn', true);
        userStorage.setString('userName',loggedInUser.data.loginUserData.userName);
        userStorage.setString('userId',loggedInUser.data.loginUserData.userID);
        userStorage.setString('userEmail',loggedInUser.data.loginUserData.emailID);
        userStorage.setString('clientId',loggedInUser.data.loginUserData.clientID);
        userStorage.setString('userImage', loggedInUser.data.loginUserData.userImage);
        userStorage.setString('token', loggedInUser.data.tokendetails.token);
        setState(() {
          showError = false;
          isLoading = false;
        });
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);

      } else {
        setState(() {
          showError = true;
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    userNameController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //to hide the keyboard whenever user tap outside
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: kDarkBlueColor,
                  height: MediaQuery.of(context).size.height * 0.35,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Group@3x.png',
                    width: MediaQuery.of(context).size.width * 0.35,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 35.0,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Proceed with your\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                )),
                            TextSpan(
                                text: 'Log In',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 22.0,
                                ))
                          ])),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                initialValue: 'Billdaviau',
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person,
                                    color: Colors.black54,
                                    size: 20.0,
                                  ),
                                  hintText: 'Username',
                                ),
                                controller: userNameController,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (_) => FocusScope.of(context)
                                    .requestFocus(passwordFocusNode),
                                validator: (username) {
                                  if (username.trim().isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              TextFormField(
                                initialValue: 'kriyahotels',
                                obscureText: true,
                                focusNode: passwordFocusNode,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Colors.black54,
                                    size: 20.0,
                                  ),
                                  hintText: 'Password',
                                ),
                                controller: passwordController,
                                validator: (password) {
                                  if (password.trim().isEmpty) {
                                    return 'Please enter password';
                                  }
                                  if (password.trim().length < 6) {
                                    return 'Password length must be 6 character long';
                                  }
                                  return null;
                                },
                                onEditingComplete: () => _submitForm,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 300),
                          opacity: showError ? 1 : 0,
                          child: Text(
                            'Invalid Username or Password !',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 14.0,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8.0),
                            onTap: _submitForm,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red[700],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (isLoading)
              Container(
                alignment: Alignment.center,
                color: Colors.grey.withOpacity(0.3),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(kDarkBlueColor),
                ),
              )
          ],
        ),
      ),
    );
  }
}
