import 'package:flutter/material.dart';

import 'login_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});


  void _logout(BuildContext context) {
    // Handle logout logic here
    // For example, you might want to clear user data and navigate to the login screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the App!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'We are glad to have you here.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _logout(context),
        tooltip: 'Logout',
        child: const Icon(Icons.logout),
      ),
    );
  }
}

