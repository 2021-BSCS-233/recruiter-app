import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/action_button.dart';
import 'package:recruiter/core/routes/app_routes.dart';
import 'package:recruiter/features/home/controller/home_controller.dart';
import 'package:recruiter/features/home/widgets/home_drawer.dart';
import 'package:recruiter/features/interviews/view/interview_view.dart';
import 'package:recruiter/features/job/view/job_view.dart';
import 'package:recruiter/features/messages/controller/message_controller.dart';
import 'package:recruiter/features/messages/view/message_view.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final MessageController messageController = Get.put(MessageController());

  HomeView({super.key});

  final List<Widget> pageList = [
    JobView(),
    InterviewView(),
    MessageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        actions: [
          SvgPicture.string(AppIcons.freePlanIcon, height: 28),
          SizedBox(width: 10),
          ActionButton(
            width: 68,
            height: 32,
            buttonText: 'Upgrade',
            onPress: () {},
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.profileView);
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/temp.jpg'),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Obx(() => pageList[homeController.selectedPageIndex.value]),
    );
  }
}
