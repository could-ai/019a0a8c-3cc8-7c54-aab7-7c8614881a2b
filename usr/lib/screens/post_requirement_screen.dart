import 'package:flutter/material.dart';

class PostRequirementScreen extends StatefulWidget {
  const PostRequirementScreen({super.key});

  @override
  _PostRequirementScreenState createState() => _PostRequirementScreenState();
}

class _PostRequirementScreenState extends State<PostRequirementScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _clinicNameController = TextEditingController();
  final TextEditingController _specializationController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();
  final TextEditingController _requirementController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Requirement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _clinicNameController,
                decoration: const InputDecoration(labelText: 'Clinic Name'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _specializationController,
                decoration: const InputDecoration(labelText: 'Specialization'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Location'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _durationController,
                decoration: const InputDecoration(labelText: 'Duration'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _requirementController,
                decoration: const InputDecoration(labelText: 'Requirement'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _experienceController,
                decoration: const InputDecoration(labelText: 'Experience Needed'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Mock posting requirement
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Requirement posted successfully')),
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text('Post Requirement'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}