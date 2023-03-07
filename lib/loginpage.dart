import 'package:flutter/material.dart';
import './main.dart';
import './regLogPage.dart';
import './main.dart';
import './homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  var email = '';

  var password = '';

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value) {
                //
              },
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                  return 'Enter a valid email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              onFieldSubmitted: (value) {},
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r"^[1234567890]+[qwertyuioplkjhgfdsazxcvbnm]+[+_!@#$%^&*()_+]")
                        .hasMatch(value)) {
                  return 'Enter a valid password which includes 1-9 , a-z , !+_*&^%';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                _submit();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
                // setState(() {
                //   email = emailController.text;

                //   password = passwordController.text;
                // });
              },

              child: Text(
                'LogIn',
                style: TextStyle(fontSize: 20.0),
              ),
              // color: Colors.blueAccent,
              // textColor: Colors.white,
            ),

            //Text('Email: $email'),        // Text('Password: $password'),
          ],
        ),
      ),
    );
  }
}
