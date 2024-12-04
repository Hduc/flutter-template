import 'package:ai_app_flutter/main1.dart';
import 'package:ai_app_flutter/presentation/spalash_screen/spalash_screen.dart';
import 'package:ai_app_flutter/presentation/spalash_screen/binding/spalash_binding.dart';
import 'package:ai_app_flutter/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:ai_app_flutter/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:ai_app_flutter/presentation/onboarding1_screen/onboarding1_screen.dart';
import 'package:ai_app_flutter/presentation/onboarding1_screen/binding/onboarding1_binding.dart';
import 'package:ai_app_flutter/presentation/onboarding2_screen/onboarding2_screen.dart';
import 'package:ai_app_flutter/presentation/onboarding2_screen/binding/onboarding2_binding.dart';
import 'package:ai_app_flutter/presentation/login_screen/login_screen.dart';
import 'package:ai_app_flutter/presentation/login_screen/binding/login_binding.dart';
import 'package:ai_app_flutter/presentation/login_fill_screen/login_fill_screen.dart';
import 'package:ai_app_flutter/presentation/login_fill_screen/binding/login_fill_binding.dart';
import 'package:ai_app_flutter/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ai_app_flutter/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:ai_app_flutter/presentation/sign_up_fill_screen/sign_up_fill_screen.dart';
import 'package:ai_app_flutter/presentation/sign_up_fill_screen/binding/sign_up_fill_binding.dart';
import 'package:ai_app_flutter/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:ai_app_flutter/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:ai_app_flutter/presentation/otp_code_varification_screen/otp_code_varification_screen.dart';
import 'package:ai_app_flutter/presentation/otp_code_varification_screen/binding/otp_code_varification_binding.dart';
import 'package:ai_app_flutter/presentation/home_one_container_screen/home_one_container_screen.dart';
import 'package:ai_app_flutter/presentation/home_one_container_screen/binding/home_one_container_binding.dart';
import 'package:ai_app_flutter/presentation/chat_screen/chat_screen.dart';
import 'package:ai_app_flutter/presentation/chat_screen/binding/chat_binding.dart';
import 'package:ai_app_flutter/presentation/chat_screen_active_screen/chat_screen_active_screen.dart';
import 'package:ai_app_flutter/presentation/chat_screen_active_screen/binding/chat_screen_active_binding.dart';
import 'package:ai_app_flutter/presentation/chat_screen_stop_generating_screen/chat_screen_stop_generating_screen.dart';
import 'package:ai_app_flutter/presentation/chat_screen_stop_generating_screen/binding/chat_screen_stop_generating_binding.dart';
import 'package:ai_app_flutter/presentation/talkifyai_screen/talkifyai_screen.dart';
import 'package:ai_app_flutter/presentation/talkifyai_screen/binding/talkifyai_binding.dart';
import 'package:ai_app_flutter/presentation/chat_screen_share_popup_screen/chat_screen_share_popup_screen.dart';
import 'package:ai_app_flutter/presentation/chat_screen_share_popup_screen/binding/chat_screen_share_popup_binding.dart';
import 'package:ai_app_flutter/presentation/home_screen/home_screen.dart';
import 'package:ai_app_flutter/presentation/home_screen/binding/home_binding.dart';
import 'package:ai_app_flutter/presentation/writing_tab_container_screen/writing_tab_container_screen.dart';
import 'package:ai_app_flutter/presentation/writing_tab_container_screen/binding/writing_tab_container_binding.dart';
import 'package:ai_app_flutter/presentation/write_an_articles_screen/write_an_articles_screen.dart';
import 'package:ai_app_flutter/presentation/write_an_articles_screen/binding/write_an_articles_binding.dart';
import 'package:ai_app_flutter/presentation/write_an_articles_one_screen/write_an_articles_one_screen.dart';
import 'package:ai_app_flutter/presentation/write_an_articles_one_screen/binding/write_an_articles_one_binding.dart';
import 'package:ai_app_flutter/presentation/academic_writer_screen/academic_writer_screen.dart';
import 'package:ai_app_flutter/presentation/academic_writer_screen/binding/academic_writer_binding.dart';
import 'package:ai_app_flutter/presentation/academic_writer_chat_screen/academic_writer_chat_screen.dart';
import 'package:ai_app_flutter/presentation/academic_writer_chat_screen/binding/academic_writer_chat_binding.dart';
import 'package:ai_app_flutter/presentation/translate_language_one_screen/translate_language_one_screen.dart';
import 'package:ai_app_flutter/presentation/translate_language_one_screen/binding/translate_language_one_binding.dart';
import 'package:ai_app_flutter/presentation/translate_language_screen/translate_language_screen.dart';
import 'package:ai_app_flutter/presentation/translate_language_screen/binding/translate_language_binding.dart';
import 'package:ai_app_flutter/presentation/plagiarism_checker_screen/plagiarism_checker_screen.dart';
import 'package:ai_app_flutter/presentation/plagiarism_checker_screen/binding/plagiarism_checker_binding.dart';
import 'package:ai_app_flutter/presentation/plagiarism_checker_chat_screen/plagiarism_checker_chat_screen.dart';
import 'package:ai_app_flutter/presentation/plagiarism_checker_chat_screen/binding/plagiarism_checker_chat_binding.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_one_screen/songs_lyrics_one_screen.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_one_screen/binding/songs_lyrics_one_binding.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_chat_screen/songs_lyrics_chat_screen.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_chat_screen/binding/songs_lyrics_chat_binding.dart';
import 'package:ai_app_flutter/presentation/storyteller_screen/storyteller_screen.dart';
import 'package:ai_app_flutter/presentation/storyteller_screen/binding/storyteller_binding.dart';
import 'package:ai_app_flutter/presentation/storyteller_chat_screen/storyteller_chat_screen.dart';
import 'package:ai_app_flutter/presentation/storyteller_chat_screen/binding/storyteller_chat_binding.dart';
import 'package:ai_app_flutter/presentation/poems_screen/poems_screen.dart';
import 'package:ai_app_flutter/presentation/poems_screen/binding/poems_binding.dart';
import 'package:ai_app_flutter/presentation/poems_chat_screen/poems_chat_screen.dart';
import 'package:ai_app_flutter/presentation/poems_chat_screen/binding/poems_chat_binding.dart';
import 'package:ai_app_flutter/presentation/movie_script_screen/movie_script_screen.dart';
import 'package:ai_app_flutter/presentation/movie_script_screen/binding/movie_script_binding.dart';
import 'package:ai_app_flutter/presentation/movie_script_chat_screen/movie_script_chat_screen.dart';
import 'package:ai_app_flutter/presentation/movie_script_chat_screen/binding/movie_script_chat_binding.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_screen/songs_lyrics_screen.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_screen/binding/songs_lyrics_binding.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_chat_one_screen/songs_lyrics_chat_one_screen.dart';
import 'package:ai_app_flutter/presentation/songs_lyrics_chat_one_screen/binding/songs_lyrics_chat_one_binding.dart';
import 'package:ai_app_flutter/presentation/answer_interview_screen/answer_interview_screen.dart';
import 'package:ai_app_flutter/presentation/answer_interview_screen/binding/answer_interview_binding.dart';
import 'package:ai_app_flutter/presentation/answer_interview_chat_screen/answer_interview_chat_screen.dart';
import 'package:ai_app_flutter/presentation/answer_interview_chat_screen/binding/answer_interview_chat_binding.dart';

import 'package:ai_app_flutter/presentation/advertisements_one_screen/advertisements_one_screen.dart';
import 'package:ai_app_flutter/presentation/advertisements_one_screen/binding/advertisements_one_binding.dart';
import 'package:ai_app_flutter/presentation/advertisements_screen/advertisements_screen.dart';
import 'package:ai_app_flutter/presentation/advertisements_screen/binding/advertisements_binding.dart';
import 'package:ai_app_flutter/presentation/devloper_screen/devloper_screen.dart';
import 'package:ai_app_flutter/presentation/devloper_screen/binding/devloper_binding.dart';
import 'package:ai_app_flutter/presentation/write_code_screen/write_code_screen.dart';
import 'package:ai_app_flutter/presentation/write_code_screen/binding/write_code_binding.dart';
import 'package:ai_app_flutter/presentation/write_code_chat_screen/write_code_chat_screen.dart';
import 'package:ai_app_flutter/presentation/write_code_chat_screen/binding/write_code_chat_binding.dart';

import 'package:ai_app_flutter/presentation/personal_screen/personal_screen.dart';
import 'package:ai_app_flutter/presentation/personal_screen/binding/personal_binding.dart';
import 'package:ai_app_flutter/presentation/birthday_screen/birthday_screen.dart';
import 'package:ai_app_flutter/presentation/birthday_screen/binding/birthday_binding.dart';
import 'package:ai_app_flutter/presentation/birthday_chat_screen/birthday_chat_screen.dart';
import 'package:ai_app_flutter/presentation/birthday_chat_screen/binding/birthday_chat_binding.dart';
import 'package:ai_app_flutter/presentation/apology_screen/apology_screen.dart';
import 'package:ai_app_flutter/presentation/apology_screen/binding/apology_binding.dart';
import 'package:ai_app_flutter/presentation/apology_chat_screen/apology_chat_screen.dart';
import 'package:ai_app_flutter/presentation/apology_chat_screen/binding/apology_chat_binding.dart';

import 'package:ai_app_flutter/presentation/other_screen/other_screen.dart';
import 'package:ai_app_flutter/presentation/other_screen/binding/other_binding.dart';
import 'package:ai_app_flutter/presentation/create_conversation_screen/create_conversation_screen.dart';
import 'package:ai_app_flutter/presentation/create_conversation_screen/binding/create_conversation_binding.dart';
import 'package:ai_app_flutter/presentation/create_conversation_chat_screen/create_conversation_chat_screen.dart';
import 'package:ai_app_flutter/presentation/create_conversation_chat_screen/binding/create_conversation_chat_binding.dart';
import 'package:ai_app_flutter/presentation/tell_a_joke_screen/tell_a_joke_screen.dart';
import 'package:ai_app_flutter/presentation/tell_a_joke_screen/binding/tell_a_joke_binding.dart';
import 'package:ai_app_flutter/presentation/tell_a_joke_chat_screen/tell_a_joke_chat_screen.dart';
import 'package:ai_app_flutter/presentation/tell_a_joke_chat_screen/binding/tell_a_joke_chat_binding.dart';

import 'package:ai_app_flutter/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:ai_app_flutter/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:ai_app_flutter/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ai_app_flutter/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String spalashScreen = '/spalash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboarding1Screen = '/onboarding1_screen';

  static const String onboarding2Screen = '/onboarding2_screen';

  static const String loginScreen = '/login_screen';

  static const String loginFillScreen = '/login_fill_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpFillScreen = '/sign_up_fill_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String otpCodeVarificationScreen =
      '/otp_code_varification_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String chatScreen = '/chat_screen';

  static const String chatScreenActiveScreen = '/chat_screen_active_screen';

  static const String chatScreenStopGeneratingScreen =
      '/chat_screen_stop_generating_screen';

  static const String talkifyaiScreen = '/talkifyai_screen';

  static const String chatScreenSharePopupScreen =
      '/chat_screen_share_popup_screen';

  static const String homeScreen = '/home_screen';

  static const String writingPage = '/writing_page';

  static const String writingTabContainerScreen =
      '/writing_tab_container_screen';

  static const String writeAnArticlesScreen = '/write_an_articles_screen';

  static const String writeAnArticlesOneScreen =
      '/write_an_articles_one_screen';

  static const String academicWriterScreen = '/academic_writer_screen';

  static const String academicWriterChatScreen = '/academic_writer_chat_screen';

  static const String translateLanguageOneScreen =
      '/translate_language_one_screen';

  static const String translateLanguageScreen = '/translate_language_screen';

  static const String plagiarismCheckerScreen = '/plagiarism_checker_screen';

  static const String plagiarismCheckerChatScreen =
      '/plagiarism_checker_chat_screen';

  static const String creativePage = '/creative_page';

  static const String songsLyricsOneScreen = '/songs_lyrics_one_screen';

  static const String songsLyricsChatScreen = '/songs_lyrics_chat_screen';

  static const String storytellerScreen = '/storyteller_screen';

  static const String storytellerChatScreen = '/storyteller_chat_screen';

  static const String poemsScreen = '/poems_screen';

  static const String poemsChatScreen = '/poems_chat_screen';

  static const String movieScriptScreen = '/movie_script_screen';

  static const String movieScriptChatScreen = '/movie_script_chat_screen';

  static const String businessPage = '/business_page';

  static const String songsLyricsScreen = '/songs_lyrics_screen';

  static const String songsLyricsChatOneScreen =
      '/songs_lyrics_chat_one_screen';

  static const String answerInterviewScreen = '/answer_interview_screen';

  static const String answerInterviewChatScreen =
      '/answer_interview_chat_screen';

  static const String jobPostScreen = '/job_post_screen';

  static const String jobPostChatScreen = '/job_post_chat_screen';

  static const String advertisementsOneScreen = '/advertisements_one_screen';

  static const String advertisementsScreen = '/advertisements_screen';

  static const String devloperScreen = '/devloper_screen';

  static const String writeCodeScreen = '/write_code_screen';

  static const String writeCodeChatScreen = '/write_code_chat_screen';

  static const String explainCodeScreen = '/explain_code_screen';

  static const String explainCodeChatScreen = '/explain_code_chat_screen';

  static const String personalScreen = '/personal_screen';

  static const String birthdayScreen = '/birthday_screen';

  static const String birthdayChatScreen = '/birthday_chat_screen';

  static const String apologyScreen = '/apology_screen';

  static const String apologyChatScreen = '/apology_chat_screen';

  static const String invitationScreen = '/invitation_screen';

  static const String invitationChatScreen = '/invitation_chat_screen';

  static const String otherScreen = '/other_screen';

  static const String createConversationScreen = '/create_conversation_screen';

  static const String createConversationChatScreen =
      '/create_conversation_chat_screen';

  static const String tellAJokeScreen = '/tell_a_joke_screen';

  static const String tellAJokeChatScreen = '/tell_a_joke_chat_screen';

  static const String foodRecipesScreen = '/food_recipes_screen';

  static const String foodRecipesChatScreen = '/food_recipes_chat_screen';

  static const String dietPlanScreen = '/diet_plan_screen';

  static const String dietPlanChatScreen = '/diet_plan_chat_screen';

  static const String historyEmptyScreen = '/history_empty_screen';

  static const String historyTwoScreen = '/history_two_screen';

  static const String historyScreen = '/history_screen';

  static const String searchPage = '/search_page';

  static const String historyOneScreen = '/history_one_screen';

  static const String historyDeleteScreen = '/history_delete_screen';

  static const String accountPage = '/account_page';

  static const String personalInfoScreen = '/personal_info_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String faqScreen = '/faq_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: spalashScreen,
      page: () => SpalashScreen(),
      bindings: [
        SpalashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: onboarding1Screen,
      page: () => Onboarding1Screen(),
      bindings: [
        Onboarding1Binding(),
      ],
    ),
    GetPage(
      name: onboarding2Screen,
      page: () => Onboarding2Screen(),
      bindings: [
        Onboarding2Binding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: loginFillScreen,
      page: () => LoginFillScreen(),
      bindings: [
        LoginFillBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpFillScreen,
      page: () => SignUpFillScreen(),
      bindings: [
        SignUpFillBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: otpCodeVarificationScreen,
      page: () => OtpCodeVarificationScreen(),
      bindings: [
        OtpCodeVarificationBinding(),
      ],
    ),
    GetPage(
      name: homeOneContainerScreen,
      page: () => HomeOneContainerScreen(),
      bindings: [
        HomeOneContainerBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: chatScreenActiveScreen,
      page: () => ChatScreenActiveScreen(),
      bindings: [
        ChatScreenActiveBinding(),
      ],
    ),
    GetPage(
      name: chatScreenStopGeneratingScreen,
      page: () => ChatScreenStopGeneratingScreen(),
      bindings: [
        ChatScreenStopGeneratingBinding(),
      ],
    ),
    GetPage(
      name: talkifyaiScreen,
      page: () => TalkifyaiScreen(),
      bindings: [
        TalkifyaiBinding(),
      ],
    ),
    GetPage(
      name: chatScreenSharePopupScreen,
      page: () => ChatScreenSharePopupScreen(),
      bindings: [
        ChatScreenSharePopupBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: writingTabContainerScreen,
      page: () => WritingTabContainerScreen(),
      bindings: [
        WritingTabContainerBinding(),
      ],
    ),
    GetPage(
      name: writeAnArticlesScreen,
      page: () => WriteAnArticlesScreen(),
      bindings: [
        WriteAnArticlesBinding(),
      ],
    ),
    GetPage(
      name: writeAnArticlesOneScreen,
      page: () => WriteAnArticlesOneScreen(),
      bindings: [
        WriteAnArticlesOneBinding(),
      ],
    ),
    GetPage(
      name: academicWriterScreen,
      page: () => AcademicWriterScreen(),
      bindings: [
        AcademicWriterBinding(),
      ],
    ),
    GetPage(
      name: academicWriterChatScreen,
      page: () => AcademicWriterChatScreen(),
      bindings: [
        AcademicWriterChatBinding(),
      ],
    ),
    GetPage(
      name: translateLanguageOneScreen,
      page: () => TranslateLanguageOneScreen(),
      bindings: [
        TranslateLanguageOneBinding(),
      ],
    ),
    GetPage(
      name: translateLanguageScreen,
      page: () => TranslateLanguageScreen(),
      bindings: [
        TranslateLanguageBinding(),
      ],
    ),
    GetPage(
      name: plagiarismCheckerScreen,
      page: () => PlagiarismCheckerScreen(),
      bindings: [
        PlagiarismCheckerBinding(),
      ],
    ),
    GetPage(
      name: plagiarismCheckerChatScreen,
      page: () => PlagiarismCheckerChatScreen(),
      bindings: [
        PlagiarismCheckerChatBinding(),
      ],
    ),
    GetPage(
      name: songsLyricsOneScreen,
      page: () => SongsLyricsOneScreen(),
      bindings: [
        SongsLyricsOneBinding(),
      ],
    ),
    GetPage(
      name: songsLyricsChatScreen,
      page: () => SongsLyricsChatScreen(),
      bindings: [
        SongsLyricsChatBinding(),
      ],
    ),
    GetPage(
      name: storytellerScreen,
      page: () => StorytellerScreen(),
      bindings: [
        StorytellerBinding(),
      ],
    ),
    GetPage(
      name: storytellerChatScreen,
      page: () => StorytellerChatScreen(),
      bindings: [
        StorytellerChatBinding(),
      ],
    ),
    GetPage(
      name: poemsScreen,
      page: () => PoemsScreen(),
      bindings: [
        PoemsBinding(),
      ],
    ),
    GetPage(
      name: poemsChatScreen,
      page: () => PoemsChatScreen(),
      bindings: [
        PoemsChatBinding(),
      ],
    ),
    GetPage(
      name: movieScriptScreen,
      page: () => MovieScriptScreen(),
      bindings: [
        MovieScriptBinding(),
      ],
    ),
    GetPage(
      name: movieScriptChatScreen,
      page: () => MovieScriptChatScreen(),
      bindings: [
        MovieScriptChatBinding(),
      ],
    ),
    GetPage(
      name: songsLyricsScreen,
      page: () => SongsLyricsScreen(),
      bindings: [
        SongsLyricsBinding(),
      ],
    ),
    GetPage(
      name: songsLyricsChatOneScreen,
      page: () => SongsLyricsChatOneScreen(),
      bindings: [
        SongsLyricsChatOneBinding(),
      ],
    ),
    GetPage(
      name: answerInterviewScreen,
      page: () => AnswerInterviewScreen(),
      bindings: [
        AnswerInterviewBinding(),
      ],
    ),
    GetPage(
      name: answerInterviewChatScreen,
      page: () => AnswerInterviewChatScreen(),
      bindings: [
        AnswerInterviewChatBinding(),
      ],
    ),

    GetPage(
      name: advertisementsOneScreen,
      page: () => AdvertisementsOneScreen(),
      bindings: [
        AdvertisementsOneBinding(),
      ],
    ),
    GetPage(
      name: advertisementsScreen,
      page: () => AdvertisementsScreen(),
      bindings: [
        AdvertisementsBinding(),
      ],
    ),
    GetPage(
      name: devloperScreen,
      page: () => DevloperScreen(),
      bindings: [
        DevloperBinding(),
      ],
    ),
    GetPage(
      name: writeCodeScreen,
      page: () => WriteCodeScreen(),
      bindings: [
        WriteCodeBinding(),
      ],
    ),
    GetPage(
      name: writeCodeChatScreen,
      page: () => WriteCodeChatScreen(),
      bindings: [
        WriteCodeChatBinding(),
      ],
    ),

    GetPage(
      name: personalScreen,
      page: () => PersonalScreen(),
      bindings: [
        PersonalBinding(),
      ],
    ),
    GetPage(
      name: birthdayScreen,
      page: () => BirthdayScreen(),
      bindings: [
        BirthdayBinding(),
      ],
    ),
    GetPage(
      name: birthdayChatScreen,
      page: () => BirthdayChatScreen(),
      bindings: [
        BirthdayChatBinding(),
      ],
    ),
    GetPage(
      name: apologyScreen,
      page: () => ApologyScreen(),
      bindings: [
        ApologyBinding(),
      ],
    ),
    GetPage(
      name: apologyChatScreen,
      page: () => ApologyChatScreen(),
      bindings: [
        ApologyChatBinding(),
      ],
    ),

    GetPage(
      name: otherScreen,
      page: () => OtherScreen(),
      bindings: [
        OtherBinding(),
      ],
    ),
    GetPage(
      name: createConversationScreen,
      page: () => CreateConversationScreen(),
      bindings: [
        CreateConversationBinding(),
      ],
    ),
    GetPage(
      name: createConversationChatScreen,
      page: () => CreateConversationChatScreen(),
      bindings: [
        CreateConversationChatBinding(),
      ],
    ),
    GetPage(
      name: tellAJokeScreen,
      page: () => TellAJokeScreen(),
      bindings: [
        TellAJokeBinding(),
      ],
    ),
    GetPage(
      name: tellAJokeChatScreen,
      page: () => TellAJokeChatScreen(),
      bindings: [
        TellAJokeChatBinding(),
      ],
    ),

    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => MyHomePage(title: "test"),
      bindings: [
        SpalashBinding(),
      ],
    )
  ];
}
