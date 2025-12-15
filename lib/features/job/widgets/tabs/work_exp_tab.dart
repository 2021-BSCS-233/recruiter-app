import 'package:flutter/material.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/features/job/widgets/work_exp_tile.dart';

class WorkExpTab extends StatelessWidget {
  const WorkExpTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Work Experience',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(height: 15),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ExpTile(
                expIcon: AppIcons.bagIcon,
                title: 'Senior UI/UX Designer',
                organization: 'Maze Digital',
                startDate: 'June 2025',
                endDate: 'Present',
                description:
                    'Design intuitive SaaS web applications, mobile apps, and websites with a strong focus on usability and accessibility.',
              );
            },
          ),
        ],
      ),
    );
  }
}
