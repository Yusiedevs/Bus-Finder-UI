import 'package:bus_app/constants/constants.dart';
import 'package:bus_app/screens/login_screen.dart';
import 'package:bus_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('images/Bus.jpeg'),
              ),
              const SizedBox(height: 80),
              const Text(
                'Connect with Bus Finder with your own account...',
                style: TextStyle(
                  fontSize: 20,
                  color: kTextFieldColor,
                ),
              ),
              const SizedBox(height: 70),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                style: TextButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 10.0,
                  minimumSize: const Size(0, 70),
                  backgroundColor: kTextFieldColor,
                  foregroundColor: kMainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
                child: const Text('Sign In'),
              ),
              const SizedBox(height: 30),

              TextButton(
                onPressed: () {


                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return const SignUpScreen();
                  }));
                },
                style: TextButton.styleFrom(
                  elevation: 10,
                  minimumSize: const Size(0, 70),
                  backgroundColor: kTextFieldColor,
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
    );
  }
}