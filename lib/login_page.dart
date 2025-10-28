import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/button.dart';
import 'package:flutter_application_1/component/widget_Textfield.dart';
import 'package:flutter_application_1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var statusLogin = "Loginnn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Login Page!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(child: Image.asset('assets/livereactionadmin.png')),

            //image dari resource
            // TextField(
            //   controller: usernameController,
            //   decoration: InputDecoration(
            //     labelText: 'Username',
            //     hintText: 'Enter your username',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            SizedBox(height: 20),

            Container(
              child: MyTextfield(
                controller1: usernameController,
                isPassword: false,
                label: 'Username',
                hint: 'Enter your username',
              ),
            ),

            SizedBox(height: 20),

            Container(
              child: MyTextfield(
                controller1: passwordController,
                isPassword: true,
                label: 'Password',
                hint: 'Enter your Password',
              ),
            ),
            // TextField(
            //   controller: passwordController,
            //   obscureText: true,
            //   decoration: InputDecoration(
            //     labelText: 'Password',
            //     hintText: 'Enter your password',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            SizedBox(height: 50),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              child: MyButton(
                text: 'Login',
                textColor: Colors.blueAccent,
                onPressed: () {
                  if (usernameController.text == "admin" &&
                      passwordController.text == "admin") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('Login Successful!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    setState(() {
                      statusLogin = "Login Successful!";
                      print(statusLogin);
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text('Login Failed!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    setState(() {
                      statusLogin = "Login Failed!";
                      print(statusLogin);
                    });
                  }
                },
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),

              child: MyButton(
                text: 'Register',
                textColor: Colors.green,
                onPressed: () {
                  print('Register button');
                },
              ),

              // child: ElevatedButton(
              //   onPressed: () {
              //     if (usernameController.text == "admin" &&
              //         passwordController.text == "admin") {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(
              //           backgroundColor: Colors.green,
              //           content: Text('Login Successful!'),
              //           duration: Duration(seconds: 2),
              //         ),
              //       );
              //       setState(() {
              //         statusLogin = "Login Successful!";
              //         print(statusLogin);
              //       });

              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => HomePage()),
              //       );
              //     } else {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(
              //           backgroundColor: Colors.red,
              //           content: Text('Login Failed!'),
              //           duration: Duration(seconds: 2),
              //         ),
              //       );
              //       setState(() {
              //         statusLogin = "Login Failed!";
              //         print(statusLogin);
              //       });
              //     }
              //   },
              //   child: Text('Login'),
              // ),
            ),
            Text(statusLogin),
          ],
        ),
      ),
    );
  }
}
