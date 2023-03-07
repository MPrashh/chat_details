import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  var name = '';

  var number = '';

  var email = '';

  var password = '';

  final nameController = TextEditingController();

  final numberController = TextEditingController();

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
              'Register',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'UserName'),
              controller: nameController,
              keyboardType: TextInputType.name,
              onFieldSubmitted: (value) {
                //
              },
              validator: (value) {
                if (value!.isEmpty || !RegExp(r"^[a-zA-Z]+").hasMatch(value)) {
                  return 'Enter a valid name';
                }
                return null;
              },
            ),

            TextFormField(
              decoration: InputDecoration(labelText: 'number'),
              controller: numberController,
              keyboardType: TextInputType.number,
              onFieldSubmitted: (value) {
                //
              },
              validator: (value) {
                if (value!.isEmpty || !RegExp(r"^[0-9]+").hasMatch(value)) {
                  return 'Enter a valid number';
                }
                return null;
              },
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
                setState(() {
                  name = nameController.text;
                  number = numberController.text;
                  email = emailController.text;

                  password = passwordController.text;
                });
              },
              child: Text(
                'Register',
                style: TextStyle(fontSize: 24.0),
                
              ),
            ),
            // Text('Name: $name'),
            //Text('number: $number'),
            //Text('Email: $email'),
            // Text('Password: $password'),
          ],
        ),
      ),
    );
  }
}
