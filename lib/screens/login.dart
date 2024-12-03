import 'package:afyaexpress/screens/home.dart';
import 'package:afyaexpress/screens/index.dart';
import 'package:afyaexpress/screens/mainpage.dart';
import 'package:afyaexpress/screens/register.dart';
import 'login.dart';
import 'package:afyaexpress/screens/reset_password.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Add image at the top that occupies the entire width
            Container(
              width: double.infinity,
              height: 200, // Adjust height as needed
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/login.jpeg'), // Replace image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Login section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Color(0xFF1CD0D0)), // Change text color to sky blue
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Color(0xFF1CD0D0)),

                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ForgotPaasword()),
                          );

                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF1CD0D0),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                      // Handle sign up logic here
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Center-aligned Login Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0FCECE), // Set the background color of the button to blue
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    ),
                    onPressed: () {
                      // please remove this code while implementing login auth. I used it to test frontend flow.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()), // Navigate to MainScreen
                      );
                      // Handle login logic here
                    },
                    child: const Text('Log in', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            ),
            // Text below "Healthy as a Service"
            Container(
              color: IndexPage.primaryBlue,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Health as a Service',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'You’ve got no reason to worry,\n'
                        'We are bringing health to your doorstep,\n'
                        'one call at a time.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: IndexPage.primaryMuted,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
