import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scapia_assignment/common/enums/travel_roadmap_cubit_status_enum.dart';
import 'package:scapia_assignment/travel_roadmap/models/travel_roadmap_model.dart';
import 'package:scapia_assignment/travel_roadmap/repository/travel_roadmap_repository.dart';

part 'travel_roadmap_state.dart';

class TravelRoadmapCubit extends Cubit<TravelRoadmapState> {
  final TravelRoadmapRepository _travelRoadmapRepository;

  TravelRoadmapCubit(this._travelRoadmapRepository)
      : super(TravelRoadmapState());

  void fetchTravelRoadmap() {
    emit(
      state.copwWith(cubitStatus: TravelRoadmapCubitStatus.loading),
    );

    try {
      TravelRoadmapModel? travelRoadmapModel =
          _travelRoadmapRepository.fetchTravelRoadmap;

      if (travelRoadmapModel != null &&
          travelRoadmapModel.travelData != null &&
          travelRoadmapModel.travelData?.isNotEmpty == true) {
        emit(
          state.copwWith(
            cubitStatus: TravelRoadmapCubitStatus.success,
            travelRoadmapModel: travelRoadmapModel,
          ),
        );
      } else {
        emit(
          state.copwWith(cubitStatus: TravelRoadmapCubitStatus.failure),
        );
      }
    } catch (error) {
      emit(
        state.copwWith(cubitStatus: TravelRoadmapCubitStatus.failure),
      );
    }
  }
}
