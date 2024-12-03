import 'package:afyaexpress/screens/index.dart';
import 'package:flutter/material.dart';

class ForgotPaasword extends StatefulWidget {
  const ForgotPaasword({Key? key}) : super(key: key);

  @override
  State<ForgotPaasword> createState() => _ForgotPaaswordState();
}

class _ForgotPaaswordState extends State<ForgotPaasword> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IndexPage.primaryBlue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 25),
              const Text(
                'Please input your email address to reset\n your password. A reset link will be sent to your email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: IndexPage.primaryDark,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: 'Email Address',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: IndexPage.primaryDanger),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: IndexPage.primaryMuted),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle reset password functionality here
                      String email = emailController.text;
                      // Call your reset password function with the email
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: IndexPage.primaryDark, // Button color
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Navigate back to the previous screen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: IndexPage.primaryDark, // Button color
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
