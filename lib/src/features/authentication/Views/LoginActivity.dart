import 'package:euphoria_htd/src/features/authentication/Views/HomeActivity.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({super.key});

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  var userNameTF = TextEditingController();
  var passwordTF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Happiness".toUpperCase(),
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "TO YOUR".toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Door-Step".toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10),
                    child: TextFormField(
                      controller: userNameTF,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: "Username".toUpperCase(),
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10),
                    child: TextFormField(
                      controller: passwordTF,
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      obscuringCharacter: "*",
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: "Password".toUpperCase(),
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: 200,
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if (userNameTF.text == "iamabdullahhossain" &&
                        passwordTF.text == "123456") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeActivity()));
                    } else if (userNameTF.text.isEmpty ||
                        passwordTF.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please fillup all credentials!",
                          gravity: ToastGravity.BOTTOM);
                    } else {
                      Fluttertoast.showToast(
                          msg: "Credentials not matched!",
                          gravity: ToastGravity.BOTTOM);
                    }
                  },
                  style:
                      OutlinedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: Text(
                    "Login".toUpperCase(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 2.0,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "OR",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 2.0,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
