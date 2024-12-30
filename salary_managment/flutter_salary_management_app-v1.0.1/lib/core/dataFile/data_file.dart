import '../../presentation/language_screen/models/language_model.dart';
import '../../presentation/onboarding_one_screen/models/onboarding_one_model.dart';
import '../utils/image_constant.dart';

class DataFile {
  static List<OnboardingOneModel>onBordData = [
    OnboardingOneModel(
        title: "Track your spending and income with us",
        image: ImageConstant.onboardingOne,
        description: 'Do you want to focus on the importance of fair and effective salary management'
    ),
    OnboardingOneModel(
        title: "Track your spending with our best tracking system",
        image: ImageConstant.onboardinTwo,
            description: 'Do you want to focus on the importance of fair and effective salary management'
    ),
    OnboardingOneModel(
        title: "Analyzing your income and spending with us",
        image: ImageConstant.onboardingThree,
        description: 'Do you want to focus on the importance of fair and effective salary management'
    ),
  ];
  static List<LanguageModel>languagesData = [
LanguageModel(text: "English", image: ImageConstant.usa),
LanguageModel(text: "Hindi", image: ImageConstant.india),
LanguageModel(text: "French", image: ImageConstant.france),
LanguageModel(text: "German", image: ImageConstant.germany),
LanguageModel(text: "Russian", image: ImageConstant.russia),
LanguageModel(text: "Spanish", image: ImageConstant.espana),
  ];
}