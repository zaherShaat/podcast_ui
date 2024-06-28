import 'package:flutter/material.dart';
import 'package:pod_mood/components/auth_form_field.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: AuthFormField(
            icon: Icons.email_rounded,
            hint: "hint",
          ),
        ),
      ),
    );
  }
}
