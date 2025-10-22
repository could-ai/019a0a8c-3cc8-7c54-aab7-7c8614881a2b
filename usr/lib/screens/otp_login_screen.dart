import 'package:flutter/material.dart';
import 'clinic_dashboard_screen.dart';
import 'doctor_dashboard_screen.dart';

class OtpLoginScreen extends StatefulWidget {
  final String role;

  const OtpLoginScreen({super.key, required this.role});

  @override
  _OtpLoginScreenState createState() => _OtpLoginScreenState();
}

class _OtpLoginScreenState extends State<OtpLoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  bool _otpSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.role} Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                hintText: 'Enter your mobile number',
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            if (!_otpSent)
              ElevatedButton(
                onPressed: () {
                  // Mock OTP sending
                  setState(() {
                    _otpSent = true;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('OTP sent to your mobile number')),
                  );
                },
                child: const Text('Send OTP'),
              )
            else ...[
              TextField(
                controller: _otpController,
                decoration: const InputDecoration(
                  labelText: 'OTP',
                  hintText: 'Enter the 6-digit OTP',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Mock OTP verification
                  if (_otpController.text.length == 6) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => widget.role == 'Clinic'
                            ? const ClinicDashboardScreen()
                            : const DoctorDashboardScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Invalid OTP')),
                    );
                  }
                },
                child: const Text('Verify OTP'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}