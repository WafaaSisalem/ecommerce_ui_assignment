class ServiceModel {
  final String image;
  final String details;
  ServiceModel({required this.image, required this.details});
  ServiceModel.fake()
    : image = 'assets/images/service1.png',
      details = 'Doloribus saepe aut necessit qui non qui.';
}
