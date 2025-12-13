import 'package:get/get.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/routes/app_routes.dart';
import 'package:recruiter/features/home/models/drawer_option_model.dart';

class HomeController extends GetxController {
  Rx<int> selectedPageIndex = 0.obs; //default val 0

  List<DrawerOptionModel> drawerOptions = [
    DrawerOptionModel(
      title: 'Job',
      drawerIcon: AppIcons.jobIcon,
      filledDrawerIcon: AppIcons.filledJobIcon,
      selected: true,
      pageRoute: AppRoutes.jobSearchView,
    ),
    DrawerOptionModel(
      title: 'Interviews',
      drawerIcon: AppIcons.calenderIcon,
      filledDrawerIcon: AppIcons.filledCalenderIcon,
      selected: false,
      pageRoute: '',
    ),
    DrawerOptionModel(
      title: 'Messages',
      drawerIcon: AppIcons.messagesIcon,
      filledDrawerIcon: AppIcons.filledMessageIcon,
      selected: false,
      pageRoute: AppRoutes.messageView,
    ),
  ];

  changeDrawer(index) async {
    for (var campaign in drawerOptions) {
      campaign.selected = false;
    }
    drawerOptions[index].selected = true;
    selectedPageIndex.value = index;
    update(['homeDrawer']);
    await Future.delayed(Duration(milliseconds: 500));
    Get.back();
  }
}
