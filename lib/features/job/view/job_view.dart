import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/action_button.dart';
import 'package:recruiter/core/common/widgets/input_field.dart';
import 'package:recruiter/core/routes/app_routes.dart';
import 'package:recruiter/features/job/controller/jobs_controller.dart';
import 'package:recruiter/features/job/widgets/tabs/all_jobs_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/closed_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/drafts_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/paused_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/published_tab.dart';

class JobView extends StatelessWidget {
  final JobController jobController = Get.put(JobController());
  JobView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2, top: 5, right: 2),
              child: TabBar(
                splashFactory: NoSplash.splashFactory,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Get.theme.hintColor,
                dividerColor: Colors.transparent,
                indicatorColor: Get.theme.colorScheme.surface,
                indicator: BoxDecoration(
                  color: Get.theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                tabAlignment: TabAlignment.start,

                tabs: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "All Jobs"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Drafts (0)"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Published (0)"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Closed (0)"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Paused (0)"),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    InputField(
                      controller: jobController.jobSearchTC,
                      prefixIcon: Icons.search,
                      hintText: 'Search Job Title',
                    ),
                    SizedBox(height: 15),
                    ActionButton(
                      buttonText: 'Filter',
                      inverted: true,
                      prefixIcon: AppIcons.sliderBarsIcon,
                      onPress: () {Get.toNamed(AppRoutes.jobFilterView);},
                    ),
                    SizedBox(height: 15),
                    Expanded(
                      child: TabBarView(
                        children: [
                          AllJobsTab(),
                          DraftsTab(),
                          PublishedTab(),
                          ClosedTab(),
                          PausedTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
