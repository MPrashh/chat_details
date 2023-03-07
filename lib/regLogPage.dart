import 'package:flutter/material.dart';
import './loginpage.dart';
import './registerpage.dart';
//import 'package:flutter_application_3/registerpage.dart';
//import './registerpage.dart';

class HomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'REGISTER',
                ),
                Tab(text: 'LOGIN'),
              ],
            ),

            title: Center(
              child: Text(
                'Welcome to Chat App',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
            // actions: [
            //   Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 26),
            //     child: Icon(Icons.more_vert, size: 30),
            //   ),
            // ],
            // iconTheme: Icons.search,
          ),
          body: TabBarView(
            children: [
              RegisterPage(),
              LoginPage(),
              // TextFormField(
              //   decoration: InputDecoration(
              //     labelText: 'Name:',
              //     labelStyle: TextStyle(fontSize: 20),
              //   ),
              // ),

              // controller: nameController,
              // validator: (value) {
              //   if (value.isEmpty) {
              //     return 'Please enter name';
              //   }
              // },

              // TextFormField(
              //   decoration: InputDecoration(
              //     labelText: 'Email:',
              //     labelStyle: TextStyle(fontSize: 20),
              //   ),
              // controller: emailController,
              // Icon(Icons.chat, size: 80, color: Colors.green[600]),
              // Icon(Icons.image_search, size: 80, color: Colors.green[600]),
            ],

            // children: [
            // ListTile(

            // ),
            // ListTile(
            //   leading: Image.asset('assets/m3.jpg'),
            //   title: Text('Prash'),
            //   //subtitle: Text('Secondart Text'),
            //   trailing: Icon(Icons.add_task),
            // ),
            // ListTile(
            //   leading: Image.asset('assets/m3.jpg'),
            //   title: Text('Prashant'),
            //   subtitle: Text('Missed Call'),
            //   trailing: Icon(Icons.call),
            // ),
            //  ],
          ),
        ),
      ),
      // ),
    );
  }
}
