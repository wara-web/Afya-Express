import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? phoneNumber;
  bool showOtpField = false;
  String? otp;

  final _formKey = GlobalKey<FormState>();

  // This function is for simulating OTP sending and verification
  void _sendOtp() {
    if (phoneNumber != null && phoneNumber!.isNotEmpty) {
      // Simulate OTP sent
      setState(() {
        showOtpField = true;
      });
    } else {
      _showSnackbar('Please enter a valid phone number.');
    }
  }

  void _verifyOtp() {
    if (otp != null && otp!.isNotEmpty) {
      // Simulate OTP verification
      _showSnackbar('OTP Verified successfully!');
      // Navigate to the next screen or home
      Navigator.pushReplacementNamed(context, '/index');
    } else {
      _showSnackbar('Please enter the OTP.');
    }
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool darkTheme = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'AfyaExpress',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Afya Mashinani',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Sign up with Phone number',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: IntlPhoneField(
                                    onChanged: (phone) {
                                      setState(() {
                                        phoneNumber = phone.completeNumber;
                                      });
                                    },
                                    showCountryFlag: false,
                                    decoration: InputDecoration(
                                      hintText: 'Phone Number',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40),
                                        borderSide: BorderSide(
                                          width: 1,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.phone,
                                        color: darkTheme ? Colors.amber.shade400 : Colors.grey,
                                      ),
                                    ),
                                    initialCountryCode: 'KE',
                                    validator: (value) {
                                      if (value == null || value.number.isEmpty) {
                                        return 'Phone number can\'t be empty';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                      side: BorderSide(
                                        width: 1,
                                        color: darkTheme ? Colors.amber.shade400 : Colors.blue,
                                      ),
                                    ),
                                    minimumSize: Size(100, 50),
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    if (showOtpField) {
                                      _verifyOtp();
                                    } else {
                                      _sendOtp();
                                    }
                                  },
                                  child: Text(
                                    showOtpField ? 'Verify OTP' : 'Send OTP',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (showOtpField) ...[
                              SizedBox(height: 10),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Enter OTP',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  filled: true,
                                  fillColor: darkTheme ? Colors.black45 : Colors.grey.shade200,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: darkTheme ? Colors.amber.shade400 : Colors.grey,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'OTP can\'t be empty';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    otp = text;
                                  });
                                },
                              ),
                            ],
                            SizedBox(height: 20),
                            Divider(height: 1, color: Colors.grey),
                            SizedBox(height: 20),
                            Text(
                              'Or',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                // Implement Google Sign-up logic here
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'images/google.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Sign up with Google',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Register()), // Replace with your login screen
                                );
                              },
                              child: Text(
                                'Have an account? Login..',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
