import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scapia_assignment/travel_roadmap/cubit/travel_roadmap_cubit.dart';
import 'package:scapia_assignment/travel_roadmap/repository/travel_roadmap_repository.dart';

class BlocInjection extends StatelessWidget {
  final Widget child;

  const BlocInjection({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TravelRoadmapCubit(
            RepositoryProvider.of<TravelRoadmapRepository>(
              context,
              listen: false,
            ),
          ),
        ),
      ],
      child: child,
    );
  }
}
