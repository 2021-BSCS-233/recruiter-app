import 'package:flutter/material.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/routes/app_routes.dart';
import 'package:recruiter/core/common/widgets/job_tile.dart';
import 'package:get/get.dart';

class AllJobsTab extends StatelessWidget {
  const AllJobsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JobTile(
          applicantCount: 12,
          currentStatus: 'DRAFT',
          jobTitle: 'UI/UX Designer',
          jobSalary: 'Competitive Package',
          bookMarked: false,
          companyLogo: AppIcons.googleIconSvg,
          companyName: 'Google',
          companyLocation: 'Los Angeles, California, US',
          department: 'Design',
          workHourType: AppIcons.fullTimeIcon,
          workLocation: AppIcons.onSiteIcon,
          datePosted: DateTime.now(),
          onIconTap: () {},
          onTileTap: () {
            Get.toNamed(AppRoutes.jobDetailView);
          },
        ),
      ],
    );
  }
}
