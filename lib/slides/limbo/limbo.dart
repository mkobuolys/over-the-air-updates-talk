import 'ab_testing_slide.dart';
import 'crowdin_slide.dart';
import 'feature_flags_overview_slide.dart';
import 'feature_flags_slide.dart';
import 'firebase_remote_config_slide.dart';
import 'intercom_help_center_slide.dart';
import 'limbo_section_slide.dart';
import 'personalized_config_slide.dart';
import 'revenue_cat_paywall_slide.dart';
import 'third_party_solutions_slide.dart';

const limboSlidesShort = [
  LimboSectionSlide(),
  CrowdinSlide(),
  ThirdPartySolutionsSlide(),
  FirebaseRemoteConfigSlide(),
];

const limboSlides = [
  LimboSectionSlide(),
  CrowdinSlide(),
  IntercomHelpCenterSlide(),
  RevenueCatPaywallSlide(),
  FirebaseRemoteConfigSlide(),
  FeatureFlagsOverviewSlide(),
  FeatureFlagsSlide(),
  AbTestingSlide(),
  PersonalizedConfigSlide(),
];
