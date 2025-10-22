import 'package:flutter/material.dart';
import 'screens/role_selection_screen.dart';

void main() {
  runApp(const DoctorConsultationApp());
}

class DoctorConsultationApp extends StatelessWidget {
  const DoctorConsultationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Consultation Platform',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const RoleSelectionScreen(),
    );
  }
}