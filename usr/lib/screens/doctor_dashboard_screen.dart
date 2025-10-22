import 'package:flutter/material.dart';
import 'doctor_dashboard_screen.dart';
import 'chat_screen.dart';

class DoctorDashboardScreen extends StatelessWidget {
  const DoctorDashboardScreen({super.key});

  // Mock data for requirements
  final List<Map<String, String>> mockRequirements = const [
    {
      'clinicName': 'City Hospital',
      'specialization': 'Cardiology',
      'location': 'New York',
      'duration': '2 weeks',
      'requirement': 'Consultation for heart patients',
      'experience': '5+ years',
    },
    {
      'clinicName': 'Health Clinic',
      'specialization': 'Dermatology',
      'location': 'California',
      'duration': '1 week',
      'requirement': 'Skin consultation',
      'experience': '3+ years',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Requirements'),
      ),
      body: ListView.builder(
        itemCount: mockRequirements.length,
        itemBuilder: (context, index) {
          final req = mockRequirements[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Clinic: ${req['clinicName']}', style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text('Specialization: ${req['specialization']}'),
                  Text('Location: ${req['location']}'),
                  Text('Duration: ${req['duration']}'),
                  Text('Requirement: ${req['requirement']}'),
                  Text('Experience: ${req['experience']}'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen(clinicName: req['clinicName']!)),
                      );
                    },
                    child: const Text('Contact Clinic'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}