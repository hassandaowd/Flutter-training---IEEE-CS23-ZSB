// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'sign_up.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to our Community',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
              child: const Text('Login'),
              onPressed: () {
                String username = _usernameController.text;
                String password = _passwordController.text;
                // print data
                print('login successfully');
                print('Username: $username');
                print('Password: $password');
              },
            ),
            TextButton(
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const SignPage())
                    );
                  },
                child: const Text(
                  'Don\'t have an account ? Sign Up',
                ),
            ),
          ],
        ),
      ),
    );
  }
}