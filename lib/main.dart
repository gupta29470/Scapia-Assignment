import 'package:flutter/material.dart';
import 'package:scapia_assignment/dependency_injection/bloc_injection.dart';
import 'package:scapia_assignment/dependency_injection/repository_injection.dart';
import 'package:scapia_assignment/refund_policy/screens/refund_policy_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryInjection(
      child: BlocInjection(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const RefundPolicyScreen(),
        ),
      ),
    );
  }
}
