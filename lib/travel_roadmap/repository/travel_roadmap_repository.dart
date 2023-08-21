import 'dart:developer';

import 'package:scapia_assignment/travel_roadmap/data/travel_roadmap_data.dart';
import 'package:scapia_assignment/travel_roadmap/models/travel_roadmap_model.dart';

class TravelRoadmapRepository {
  TravelRoadmapModel? get fetchTravelRoadmap {
    try {
      TravelRoadmapModel model = TravelRoadmapModel.fromJson(travelRoadmapData);
      log("TravelRoadmapRepository ============== $model");
      return model;
    } catch (error) {
      log("TravelRoadmapRepository ============== $error");
    }

    return null;
  }
}
