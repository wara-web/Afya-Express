import 'package:flutter/material.dart';
import 'login.dart'; // Import your LoginScreen file

class IndexPage extends StatelessWidget {
  // Define your primary colors
  static const Color primaryBlue = Color(0xFF1CD0D0);
  static const Color primaryDark = Color(0xFF1C274C);
  static const Color primaryDanger = Color(0xFFD93A3A);
  static const Color primaryMuted = Color(0xFF878787);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Afya Express',
            style: TextStyle(color: primaryDanger,
              fontWeight: FontWeight.bold,
              fontSize: 36,)
        ),
        centerTitle: true,
      ),

      backgroundColor: primaryBlue, // Set the background color of the scaffold to blue
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image Section
            Expanded(
              child: Image.asset(
                'images/doc.png', //We will Replace with your image path
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),

            // Text and Button Section
            Container(
              color: Colors.white, // container color set to white, we shall change when finalizing on UI
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More Comfortable chat with a Doctor',
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Book an appointment with a doctor, Chat with the Doctor and get consultation',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: primaryDark,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20.0),

                  // Centered Get Started Button
                  SizedBox(
                    width: double.infinity, // Full width button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryBlue, // Button background color
                        foregroundColor: Colors.white, // Text color
                      ),
                      child: Text('Get Started',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
