// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Educational`
  String get appname {
    return Intl.message(
      'Educational',
      name: 'appname',
      desc: '',
      args: [],
    );
  }

  /// `Glad to meet\nyou again!`
  String get gladToMeetnyouAgain {
    return Intl.message(
      'Glad to meet\nyou again!',
      name: 'gladToMeetnyouAgain',
      desc: '',
      args: [],
    );
  }

  /// `Your Email`
  String get yourEmail {
    return Intl.message(
      'Your Email',
      name: 'yourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Sign In Now`
  String get signInNow {
    return Intl.message(
      'Sign In Now',
      name: 'signInNow',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up Now`
  String get signUpNow {
    return Intl.message(
      'Sign Up Now',
      name: 'signUpNow',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get yourName {
    return Intl.message(
      'Your Name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profiles`
  String get editProfiles {
    return Intl.message(
      'Edit Profiles',
      name: 'editProfiles',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `User Information`
  String get userInformation {
    return Intl.message(
      'User Information',
      name: 'userInformation',
      desc: '',
      args: [],
    );
  }

  /// `Sign up and\nstarting workout`
  String get signUpAndnstaringWorkout {
    return Intl.message(
      'Sign up and\nstarting workout',
      name: 'signUpAndnstaringWorkout',
      desc: '',
      args: [],
    );
  }

  /// `You have an already account?`
  String get youHaveAnAlreadyAccount {
    return Intl.message(
      'You have an already account?',
      name: 'youHaveAnAlreadyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Referrals`
  String get referrals {
    return Intl.message(
      'Referrals',
      name: 'referrals',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddressHint {
    return Intl.message(
      'Email Address',
      name: 'emailAddressHint',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `My Course`
  String get myCourse {
    return Intl.message(
      'My Course',
      name: 'myCourse',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Search Courses & webinars`
  String get searchCoursesWebinars {
    return Intl.message(
      'Search Courses & webinars',
      name: 'searchCoursesWebinars',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Recommended Courses`
  String get recommendedCourses {
    return Intl.message(
      'Recommended Courses',
      name: 'recommendedCourses',
      desc: '',
      args: [],
    );
  }

  /// `Featured`
  String get featured {
    return Intl.message(
      'Featured',
      name: 'featured',
      desc: '',
      args: [],
    );
  }

  /// `Continue Course`
  String get continueCourse {
    return Intl.message(
      'Continue Course',
      name: 'continueCourse',
      desc: '',
      args: [],
    );
  }

  /// `Top courses In`
  String get topCoursesIn {
    return Intl.message(
      'Top courses In',
      name: 'topCoursesIn',
      desc: '',
      args: [],
    );
  }

  /// `Software Courses`
  String get softwareCourses {
    return Intl.message(
      'Software Courses',
      name: 'softwareCourses',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `Designing And Animation`
  String get designingAndAnimation {
    return Intl.message(
      'Designing And Animation',
      name: 'designingAndAnimation',
      desc: '',
      args: [],
    );
  }

  /// `Mechanical/Civil/Electrical`
  String get mechanicalcivilelectrical {
    return Intl.message(
      'Mechanical/Civil/Electrical',
      name: 'mechanicalcivilelectrical',
      desc: '',
      args: [],
    );
  }

  /// `Live Project`
  String get liveProject {
    return Intl.message(
      'Live Project',
      name: 'liveProject',
      desc: '',
      args: [],
    );
  }

  /// `Hardware and Networking`
  String get hardwareAndNetworking {
    return Intl.message(
      'Hardware and Networking',
      name: 'hardwareAndNetworking',
      desc: '',
      args: [],
    );
  }

  /// `Digital Marketing Course`
  String get digitalMarketingCourse {
    return Intl.message(
      'Digital Marketing Course',
      name: 'digitalMarketingCourse',
      desc: '',
      args: [],
    );
  }

  /// `Course Details`
  String get courseDetails {
    return Intl.message(
      'Course Details',
      name: 'courseDetails',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Click here to continue`
  String get clickHereToContinue {
    return Intl.message(
      'Click here to continue',
      name: 'clickHereToContinue',
      desc: '',
      args: [],
    );
  }

  /// `This Course Includes:`
  String get thisCourseIncludes {
    return Intl.message(
      'This Course Includes:',
      name: 'thisCourseIncludes',
      desc: '',
      args: [],
    );
  }

  /// `To Apply for NSDC Skill India Certificate you must upgrade your course`
  String get toApplyForNsdcSkillIndiaCertificateYouMustUpgrade {
    return Intl.message(
      'To Apply for NSDC Skill India Certificate you must upgrade your course',
      name: 'toApplyForNsdcSkillIndiaCertificateYouMustUpgrade',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade to Certify`
  String get upgradeToCertify {
    return Intl.message(
      'Upgrade to Certify',
      name: 'upgradeToCertify',
      desc: '',
      args: [],
    );
  }

  /// `From The Educational Community`
  String get fromTheLearnvernCommunity {
    return Intl.message(
      'From The Educational Community',
      name: 'fromTheLearnvernCommunity',
      desc: '',
      args: [],
    );
  }

  /// `Unit Details`
  String get unitDetails {
    return Intl.message(
      'Unit Details',
      name: 'unitDetails',
      desc: '',
      args: [],
    );
  }

  /// `My Downloads`
  String get myDownloads {
    return Intl.message(
      'My Downloads',
      name: 'myDownloads',
      desc: '',
      args: [],
    );
  }

  /// `My Video`
  String get myVideo {
    return Intl.message(
      'My Video',
      name: 'myVideo',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade`
  String get upgrade {
    return Intl.message(
      'Upgrade',
      name: 'upgrade',
      desc: '',
      args: [],
    );
  }

  /// `Your Referral Code`
  String get yourReferralCode {
    return Intl.message(
      'Your Referral Code',
      name: 'yourReferralCode',
      desc: '',
      args: [],
    );
  }

  /// `Copy your code and share to win rewards`
  String get copyYourCodeAndShareToWinRewards {
    return Intl.message(
      'Copy your code and share to win rewards',
      name: 'copyYourCodeAndShareToWinRewards',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Personal Details`
  String get personalDetails {
    return Intl.message(
      'Personal Details',
      name: 'personalDetails',
      desc: '',
      args: [],
    );
  }

  /// `Night Mode`
  String get nightMode {
    return Intl.message(
      'Night Mode',
      name: 'nightMode',
      desc: '',
      args: [],
    );
  }

  /// `Contact via`
  String get contactVia {
    return Intl.message(
      'Contact via',
      name: 'contactVia',
      desc: '',
      args: [],
    );
  }

  /// `Exp. Date`
  String get expDate {
    return Intl.message(
      'Exp. Date',
      name: 'expDate',
      desc: '',
      args: [],
    );
  }

  /// `Exp. Date`
  String get expDateHint {
    return Intl.message(
      'Exp. Date',
      name: 'expDateHint',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvvHint {
    return Intl.message(
      'CVV',
      name: 'cvvHint',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Card Holder Name`
  String get cardHolderName {
    return Intl.message(
      'Card Holder Name',
      name: 'cardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `We need your registration email to send you password reset code!`
  String get weNeedYourRegistrationEmailToSendYouPasswordReset {
    return Intl.message(
      'We need your registration email to send you password reset code!',
      name: 'weNeedYourRegistrationEmailToSendYouPasswordReset',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!You have purchase a new course`
  String get congratulationsyouHavePurchaseANewCourse {
    return Intl.message(
      'Congratulations!You have purchase a new course',
      name: 'congratulationsyouHavePurchaseANewCourse',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
