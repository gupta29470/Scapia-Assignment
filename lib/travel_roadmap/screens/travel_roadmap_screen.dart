import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scapia_assignment/common/enums/travel_roadmap_cubit_status_enum.dart';
import 'package:scapia_assignment/common/extension/extensions.dart';
import 'package:scapia_assignment/styles/decorations/decorations_helper.dart';
import 'package:scapia_assignment/styles/text_styles/text_styles_helper.dart';
import 'package:scapia_assignment/travel_roadmap/cubit/travel_roadmap_cubit.dart';
import 'package:scapia_assignment/travel_roadmap/models/travel_roadmap_model.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/header_widget.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/timeline_widget.dart';
import 'package:scapia_assignment/travel_roadmap/widgets/travel_details_widget.dart';

class TravelRoadmapScreen extends StatefulWidget {
  const TravelRoadmapScreen({super.key});

  @override
  State<TravelRoadmapScreen> createState() => _TravelRoadmapScreenState();
}

class _TravelRoadmapScreenState extends State<TravelRoadmapScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.travelRoadmapCubit.fetchTravelRoadmap();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocBuilder<TravelRoadmapCubit, TravelRoadmapState>(
        builder: (_, state) {
          if (state.cubitStatus.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.cubitStatus.isFailure) {
            return Center(
              child: Text(
                "Something went wrong...",
                style: TextStylesHelper.black_16_600,
              ),
            );
          } else if (state.cubitStatus.isSuccess) {
            List<SingleTravelData?> travelData =
                state.travelRoadmapModel.travelData ?? [];

            return Center(
              child: Container(
                height: 250,
                padding: const EdgeInsets.symmetric(vertical: 24),
                decoration: DecorationsHelper.travelRoadmapDecor,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderWidget(travelData: travelData),
                      TimelineWidget(travelData: travelData),
                      TravelDetailsWidget(travelData: travelData),
                    ],
                  ),
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
