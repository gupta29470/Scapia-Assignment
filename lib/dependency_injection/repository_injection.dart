import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scapia_assignment/travel_roadmap/repository/travel_roadmap_repository.dart';

class RepositoryInjection extends StatelessWidget {
  final Widget child;

  const RepositoryInjection({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => TravelRoadmapRepository(),
        ),
      ],
      child: child,
    );
  }
}
