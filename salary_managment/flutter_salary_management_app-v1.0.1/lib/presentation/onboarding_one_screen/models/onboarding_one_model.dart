
/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {
  // Rx<List<TrackyourspendingsliderItemModel>> trackyourspendingsliderItemList =
  //     Rx(List.generate(1, (index) => TrackyourspendingsliderItemModel()));
  String? image;
  String? title ;
  String? description;
  OnboardingOneModel({this.image, this.title, this.description});

}
