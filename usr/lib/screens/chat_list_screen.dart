import 'package:flutter/material.dart';
import 'chat_screen.dart';
class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  // Mock chat list
  final List<String> mockChats = const ['Doctor John', 'Doctor Jane'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: mockChats.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mockChats[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen(clinicName: mockChats[index])),
              );
            },
          );
        },
      ),
    );
  }
}