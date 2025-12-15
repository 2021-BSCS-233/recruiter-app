import 'package:get/get.dart';
import 'package:recruiter/features/auth/bindings/login_binding.dart';
import 'package:recruiter/features/auth/view/login_view.dart';
import 'package:recruiter/features/auth/view/forgot_password_view.dart';
import 'package:recruiter/features/home/view/home_view.dart';
import 'package:recruiter/features/home/view/profile_view.dart';
import 'package:recruiter/features/home/view/settings_view.dart';
import 'package:recruiter/features/interviews/view/interview_detail_view.dart';
import 'package:recruiter/features/interviews/view/interview_view.dart';
import 'package:recruiter/features/job/view/job_applicant_profile_view.dart';
import 'package:recruiter/features/job/view/job_description_view.dart';
import 'package:recruiter/features/job/view/job_detail_view.dart';
import 'package:recruiter/features/job/view/job_filter_view.dart';
import 'package:recruiter/features/job/view/job_view.dart';
import 'package:recruiter/features/messages/view/chats_view.dart';
import 'package:recruiter/features/messages/view/message_view.dart';

class AppRoutes {
  //auth
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';

  //home
  static const String home = '/home';
  static const String profileView = '/profileView';
  static const String settingsView = '/settingsView';

  //job
  static const String jobView = '/jobView';
  static const String jobFilterView = '/jobFilterView';
  static const String jobDetailView = '/jobDetailView';
  static const String jobDescriptionView = '/jobDescriptionView';
  static const String jobApplicantProfile = '/jobApplicantProfile';

  //interview
  static const String interviewView = '/interviewView';
  static const String interviewDetailView = '/interviewDetailView';

  //messages
  static const String messageView = '/messageView';
  static const String chatsView = '/chatsView';
}

class AppPages {
  static final List<GetPage> pages = [
    //auth
    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(name: AppRoutes.forgotPassword, page: () => ForgotPasswordView()),
    //home
    GetPage(name: AppRoutes.home, page: () => HomeView()),
    GetPage(name: AppRoutes.profileView, page: () => ProfileView()),
    GetPage(name: AppRoutes.settingsView, page: () => SettingsView()),
    //job
    GetPage(name: AppRoutes.jobView, page: () => JobView()),
    GetPage(name: AppRoutes.jobFilterView, page: () => JobFilterView()),
    GetPage(name: AppRoutes.jobDetailView, page: () => JobDetailView()),
    GetPage(
      name: AppRoutes.jobDescriptionView,
      page: () => JobDescriptionView(),
    ),
    GetPage(
      name: AppRoutes.jobApplicantProfile,
      page: () => JobApplicantProfileView(),
    ),
    //interview
    GetPage(name: AppRoutes.interviewView, page: () => InterviewView()),
    GetPage(
      name: AppRoutes.interviewDetailView,
      page: () => InterviewDetailView(),
    ),
    //messages
    GetPage(name: AppRoutes.messageView, page: () => MessageView()),
    GetPage(name: AppRoutes.chatsView, page: () => ChatsView()),
  ];
}
