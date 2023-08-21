class SingleTravelData {
/*
{
  "flight_image": "image.png",
  "flight_name": "SpiceJet",
  "flight_number": "SG-532",
  "departure_time": "15:50",
  "departure_date": "30th June 2023",
  "departure_airport": "Pune",
  "departure_airport_code": "PNQ",
  "departure_terminal": "Terminal 1",
  "arrival_time": "17:35",
  "arrival_date": "30th June 2023",
  "arrival_airport": "Bangalore",
  "arrival_airport_code": "BLR",
  "arrival_terminal": "Terminal 1",
  "total_time": "04h 24m",
  "is_layover": false,
  "layover_airport": null,
  "layover_airport_code": null,
  "layover_time": null
} 
*/

  String? flightImage;
  String? flightName;
  String? flightNumber;
  String? departureTime;
  String? departureDate;
  String? departureAirport;
  String? departureAirportCode;
  String? departureTerminal;
  String? arrivalTime;
  String? arrivalDate;
  String? arrivalAirport;
  String? arrivalAirportCode;
  String? arrivalTerminal;
  String? totalTime;
  bool? isLayover;
  String? layoverAirport;
  String? layoverAirportCode;
  String? layoverTime;

  SingleTravelData({
    this.flightImage,
    this.flightName,
    this.flightNumber,
    this.departureTime,
    this.departureDate,
    this.departureAirport,
    this.departureAirportCode,
    this.departureTerminal,
    this.arrivalTime,
    this.arrivalDate,
    this.arrivalAirport,
    this.arrivalAirportCode,
    this.arrivalTerminal,
    this.totalTime,
    this.isLayover,
    this.layoverAirport,
    this.layoverAirportCode,
    this.layoverTime,
  });
  SingleTravelData.fromJson(Map<String, dynamic> json) {
    flightImage = json['flight_image']?.toString();
    flightName = json['flight_name']?.toString();
    flightNumber = json['flight_number']?.toString();
    departureTime = json['departure_time']?.toString();
    departureDate = json['departure_date']?.toString();
    departureAirport = json['departure_airport']?.toString();
    departureAirportCode = json['departure_airport_code']?.toString();
    departureTerminal = json['departure_terminal']?.toString();
    arrivalTime = json['arrival_time']?.toString();
    arrivalDate = json['arrival_date']?.toString();
    arrivalAirport = json['arrival_airport']?.toString();
    arrivalAirportCode = json['arrival_airport_code']?.toString();
    arrivalTerminal = json['arrival_terminal']?.toString();
    totalTime = json['total_time']?.toString();
    isLayover = json['is_layover'];
    layoverAirport = json['layover_airport']?.toString();
    layoverAirportCode = json['layover_airport_code']?.toString();
    layoverTime = json['layover_time']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['flight_image'] = flightImage;
    data['flight_name'] = flightName;
    data['flight_number'] = flightNumber;
    data['departure_time'] = departureTime;
    data['departure_date'] = departureDate;
    data['departure_airport'] = departureAirport;
    data['departure_airport_code'] = departureAirportCode;
    data['departure_terminal'] = departureTerminal;
    data['arrival_time'] = arrivalTime;
    data['arrival_date'] = arrivalDate;
    data['arrival_airport'] = arrivalAirport;
    data['arrival_airport_code'] = arrivalAirportCode;
    data['arrival_terminal'] = arrivalTerminal;
    data['total_time'] = totalTime;
    data['is_layover'] = isLayover;
    data['layover_airport'] = layoverAirport;
    data['layover_airport_code'] = layoverAirportCode;
    data['layover_time'] = layoverTime;
    return data;
  }
}

class TravelRoadmapModel {
/*
{
  "travel_data": [
    {
      "flight_image": "image.png",
      "flight_name": "SpiceJet",
      "flight_number": "SG-532",
      "departure_time": "15:50",
      "departure_date": "30th June 2023",
      "departure_airport": "Pune",
      "departure_airport_code": "PNQ",
      "departure_terminal": "Terminal 1",
      "arrival_time": "17:35",
      "arrival_date": "30th June 2023",
      "arrival_airport": "Bangalore",
      "arrival_airport_code": "BLR",
      "arrival_terminal": "Terminal 1",
      "is_layover": false,
      "layover_airport": null,
      "layover_airport_code": null,
      "layover_time": null
    }
  ]
} 
*/

  List<SingleTravelData?>? travelData;

  TravelRoadmapModel({
    this.travelData,
  });
  TravelRoadmapModel.fromJson(Map<String, dynamic> json) {
    if (json['travel_data'] != null) {
      final v = json['travel_data'];
      final arr0 = <SingleTravelData>[];
      v.forEach((v) {
        arr0.add(SingleTravelData.fromJson(v));
      });
      travelData = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (travelData != null) {
      final v = travelData;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['travel_data'] = arr0;
    }
    return data;
  }

  TravelRoadmapModel.isEmpty();
}
