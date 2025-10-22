import 'package:flutter/material.dart';
import 'post_requirement_screen.dart';
import 'chat_list_screen.dart';

class ClinicDashboardScreen extends StatelessWidget {
  const ClinicDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinic Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PostRequirementScreen()),
                );
              },
              child: const Text('Post Requirement'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatListScreen()),
                );
              },
              child: const Text('Messages'),
            ),
          ],
        ),
      ),
    );
  }
}