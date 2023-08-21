import 'package:flutter/material.dart';
import 'package:scapia_assignment/refund_policy/widgets/refund_status_widget.dart';
import 'package:scapia_assignment/refund_policy/widgets/title_widget.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';
import 'package:scapia_assignment/travel_roadmap/screens/travel_roadmap_screen.dart';

class RefundPolicyScreen extends StatefulWidget {
  const RefundPolicyScreen({super.key});

  @override
  State<RefundPolicyScreen> createState() => _RefundPolicyScreenState();
}

class _RefundPolicyScreenState extends State<RefundPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(24),
                child: TitleWidget(
                  title: "Refund Policy",
                ),
              ),
              RefundStatusWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Navigate to 2nd screen",
          style: TextStylesHelper.black_12_700,
        ),
        icon: const Icon(
          Icons.navigate_next,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TravelRoadmapScreen(),
            ),
          );
        },
      ),
    );
  }
}
