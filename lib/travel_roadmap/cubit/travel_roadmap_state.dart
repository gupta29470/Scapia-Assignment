part of 'travel_roadmap_cubit.dart';

class TravelRoadmapState extends Equatable {
  final TravelRoadmapCubitStatus cubitStatus;
  final TravelRoadmapModel travelRoadmapModel;

  TravelRoadmapState({
    this.cubitStatus = TravelRoadmapCubitStatus.initial,
    TravelRoadmapModel? travelRoadmapModel,
  }) : travelRoadmapModel = travelRoadmapModel ?? TravelRoadmapModel.isEmpty();

  TravelRoadmapState copwWith({
    TravelRoadmapCubitStatus? cubitStatus,
    TravelRoadmapModel? travelRoadmapModel,
  }) {
    return TravelRoadmapState(
      cubitStatus: cubitStatus ?? this.cubitStatus,
      travelRoadmapModel: travelRoadmapModel ?? this.travelRoadmapModel,
    );
  }

  @override
  List<Object?> get props => [cubitStatus, travelRoadmapModel];
}
