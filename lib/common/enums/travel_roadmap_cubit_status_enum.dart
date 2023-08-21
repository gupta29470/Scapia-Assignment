enum TravelRoadmapCubitStatus { initial, loading, success, failure }

extension TravelRoadmapCubitStatusX on TravelRoadmapCubitStatus {
  bool get isInitial => this == TravelRoadmapCubitStatus.initial;
  bool get isLoading => this == TravelRoadmapCubitStatus.loading;
  bool get isSuccess => this == TravelRoadmapCubitStatus.success;
  bool get isFailure => this == TravelRoadmapCubitStatus.failure;
}
