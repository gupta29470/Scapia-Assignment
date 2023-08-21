import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scapia_assignment/travel_roadmap/cubit/travel_roadmap_cubit.dart';

extension BuildContextX on BuildContext {
  TravelRoadmapCubit get travelRoadmapCubit => read<TravelRoadmapCubit>();
}
