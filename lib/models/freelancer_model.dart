import 'package:flutter_application_2/models/service_model.dart';

class Freelancer {
  final String image;
  final String name;
  final String major;
  final double rate;
  final List<ServiceModel> services;
  Freelancer({
    required this.image,
    required this.name,
    required this.major,
    required this.rate,
    required this.services,
  });
}
