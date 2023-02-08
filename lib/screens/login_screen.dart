import 'package:fluttertoast/fluttertoast.dart';
import 'package:bus_app/constants/constants.dart';
import 'package:bus_app/screens/trace_location_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage('images/Bus.jpeg'),
                ),
                const SizedBox(height: 70),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: userName,
                  decoration: const InputDecoration(
                      hintText: 'User name or User ID',
                      hintStyle: TextStyle(
                          color: kTextFieldColor, fontStyle: FontStyle.italic),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: password,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: kTextFieldColor, fontStyle: FontStyle.italic),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                      )),
                ),
                const SizedBox(height: 60),
                TextButton(
                  onPressed: () {
                    var user = userName.text.trim();
                    var passwrd = password.text.trim();

                    if(user.isEmpty || passwrd.isEmpty)
                    {
                      Fluttertoast.showToast(msg: 'Please Fill The Fields', backgroundColor: Colors.white, textColor: kMainColor);
                      return;
                    }

                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const TraceLocationScreen();
                    }));
                  },
                  style: TextButton.styleFrom(
                    elevation: 10,
                    minimumSize: const Size(0, 60),
                    backgroundColor: Colors.white,
                    foregroundColor: kMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                  child: const Text('Log In'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}