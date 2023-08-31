import 'package:assignment1/scenes/taskslist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome to',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 4),
            const Text(
              'Plan IT',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 200),
            const Text(
              "Your Personal Task Management and Planning Solution.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListTask()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                child: Text(
                  "Let's Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}