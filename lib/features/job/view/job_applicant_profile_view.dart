import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/score_guage_secondary.dart';
import 'package:recruiter/features/job/widgets/tabs/about_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/awards_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/certifications_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/cover_letter_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/education_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/languages_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/resume_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/skills_tab.dart';
import 'package:recruiter/features/job/widgets/tabs/work_exp_tab.dart';

class JobApplicantProfileView extends StatelessWidget {
  const JobApplicantProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Job Detail',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          actions: [
            Container(
              height: 24,
              width: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Get.theme.colorScheme.surface,
                border: BoxBorder.all(color: Get.theme.colorScheme.outline),
              ),
              child: Center(
                child: Text(
                  'APPLIED',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(width: 10),
            SvgPicture.string(AppIcons.messagesIcon),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                horizontalTitleGap: 5,
                contentPadding: EdgeInsets.all(0),
                titleAlignment: ListTileTitleAlignment.top,
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('assets/images/temp.jpg'),
                ),
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Dave Smith ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ScoreGaugeSecondary(score: 90, size: 25),
                    Text(
                      ' 90% skills matched',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'davesmith@gmail.com',
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      ' +1 234 567 890',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2, top: 5, right: 2),
              child: TabBar(
                splashFactory: NoSplash.splashFactory,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Get.theme.hintColor,
                dividerColor: Colors.transparent,
                indicatorColor: Get.theme.colorScheme.surface,
                indicator: BoxDecoration(),
                labelPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                tabAlignment: TabAlignment.start,

                tabs: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "About"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Resume"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Cover"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Work Experience"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Education"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Skills"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Languages"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Certifications"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tab(text: "Awards"),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: TabBarView(
                  children: [
                    AboutTab(),
                    ResumeTab(),
                    CoverLetterTab(),
                    WorkExpTab(),
                    EducationTab(),
                    SkillsTab(),
                    LanguagesTab(),
                    CertificationsTab(),
                    AwardsTab(),
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
