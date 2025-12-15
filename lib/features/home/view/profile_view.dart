import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/action_button.dart';
import 'package:recruiter/core/common/widgets/bubble_list_widget.dart';
import 'package:recruiter/core/common/widgets/education_tile.dart';
import 'package:recruiter/core/routes/app_routes.dart';
import 'package:recruiter/features/job/widgets/work_exp_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        actions: [
          InkWell(onTap: () {
            Get.toNamed(AppRoutes.settingsView);
          }, child: SvgPicture.string(AppIcons.settingIcon)),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
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
                        'Dave Smith',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    BubbleListWidget(
                      text: 'ACTIVELY LOOKING',
                      onTap: () {},
                      noIcon: true,
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
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Job Preferences',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 8),
              BubbleListWidget(
                text: 'FULL TIME',
                onTap: () {},
                noIcon: true,
                color: Get.theme.colorScheme.surface,
              ),
              SizedBox(height: 15),
              Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Hello, I\'m Dave Smith, a UI/UX Designer having two years of working experience. I\'ve contributed to a range of projects across diverse sectors, including healthcare, inventory management, human resources, and gaming. My focus is on delivering user-centric design solutions that enhance user experience and drive engagement.',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(height: 15),
              Text(
                'Work Experience',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 8),
              ExpTile(
                title: 'Senior UI/UX Designer',
                organization: 'Maze Digital',
                startDate: 'June 2025',
                endDate: 'Present',
                description:
                'Design intuitive SaaS web applications, mobile apps, and websites with a strong focus on usability and accessibility.',
                expIcon: AppIcons.bagIcon,
              ),
              SizedBox(height: 15),
              Text(
                'Education',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 8),
              EducationTile(
                title: 'Bachelors of science in Software Engineering',
                organization: 'Sindh Madrassatul Islam University (SMIU)',
                startDate: 'Aug 2022',
                endDate: 'Present',
              ),
              SizedBox(height: 15),
              Text(
                'Skills',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 15),
              Text(
                'Languages',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 15),
              Text(
                'Certifications',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 8),
              ExpTile(
                title: 'Introduction to Product Design',
                organization: 'Udacity',
                startDate: 'June 2023',
                endDate: '',
                description:
                'Design intuitive SaaS web applications, mobile apps, and websites with a strong focus on usability and accessibility.',
                expIcon: AppIcons.bagIcon,
              ),
              SizedBox(height: 15),
              Text(
                'Awards',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 8),
              ExpTile(
                title: 'Employee of the Month',
                organization: 'Inaequo Solutions',
                startDate: 'June 2023',
                endDate: '',
                description:
                'Design intuitive SaaS web applications, mobile apps, and websites with a strong focus on usability and accessibility.',
                expIcon: AppIcons.bagIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
