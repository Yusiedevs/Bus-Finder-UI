import 'package:bus_app/constants/constants.dart';
import 'package:bus_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var userName = TextEditingController();
  var password = TextEditingController();
  var phone = TextEditingController();
  var cnic = TextEditingController();
  var lcNo = TextEditingController();
  var busNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage('images/Bus.jpeg'),
                ),
                const SizedBox(height: 50),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: userName,
                  decoration: const InputDecoration(
                      hintText: 'User name',
                      hintStyle: TextStyle(
                          color: kTextFieldColor, fontStyle: FontStyle.italic),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                      )),
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
                TextField(
                  controller: phone,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: 'Phone',
                      hintStyle: TextStyle(
                          color: kTextFieldColor, fontStyle: FontStyle.italic),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                      )),
                ),
                TextField(
                  controller: cnic,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: 'CNIC',
                      hintStyle: TextStyle(
                          color: kTextFieldColor, fontStyle: FontStyle.italic),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                      )),
                ),
                TextField(
                  controller: lcNo,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: 'License Number',
                      hintStyle: TextStyle(
                          color: kTextFieldColor, fontStyle: FontStyle.italic),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                      )),
                ),
                TextField(
                  controller: busNo,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: 'Bus Number',
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
                    var phoneNo = phone.text.trim();
                    var cnicNo = cnic.text.trim();
                    var lnumber = lcNo.text.trim();
                    var busnumber = busNo.text.trim();

                    if(user.isEmpty || passwrd.isEmpty || phoneNo.isEmpty || cnicNo.isEmpty || lnumber.isEmpty || busnumber.isEmpty)
                      {
                        Fluttertoast.showToast(msg: 'Please Fill All The Fields', backgroundColor: Colors.white, textColor: kMainColor);
                        return;
                      }


                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
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
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}