import 'package:flutter/material.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/features/job/widgets/work_exp_tile.dart';

class AwardsTab extends StatelessWidget {
  const AwardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Awards',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(height: 15),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ExpTile(
                expIcon: AppIcons.trophyIcon,
                title: 'Employee of the Month',
                organization: 'Inaequo Solutions',
                startDate: 'June 2023',
                endDate: '',
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
