// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class SignPage extends StatefulWidget{
  const SignPage({super.key});

  @override
  State<StatefulWidget> createState() => _SignPageState();
}
class _SignPageState extends State<SignPage>{
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
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
              child: const Text('Sign Up'),
              onPressed: () {
                String username = _usernameController.text;
                String email = _emailController.text;
                String phone = _phoneController.text;
                String password = _passwordController.text;
                // print data
                print('Sign up successfully');
                print('Username: $username');
                print('email: $email');
                print('phone: $phone');
                print('Password: $password');
              },
            ),
          ],
        ),
      ),
    );
  }
}