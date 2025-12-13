import 'package:get/get.dart';
import 'package:recruiter/features/auth/bindings/login_binding.dart';
import 'package:recruiter/features/auth/view/login_view.dart';
import 'package:recruiter/features/auth/view/forgot_password_view.dart';
import 'package:recruiter/features/home/view/home_view.dart';
import 'package:recruiter/features/home/view/profile_view.dart';
import 'package:recruiter/features/messages/view/chats_view.dart';
import 'package:recruiter/features/messages/view/message_view.dart';

class AppRoutes {
  //auth
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';

  //home
  static const String home = '/home';
  static const String profileView = '/profileView';

  //job search
  static const String jobSearchView = '/jobSearchView';
  static const String jobFilterView = '/jobFilterView';
  static const String jobDetailView = '/jobDetailView';

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
    //messages
    GetPage(name: AppRoutes.messageView, page: () => MessageView()),
    GetPage(name: AppRoutes.chatsView, page: () => ChatsView()),
  ];
}
