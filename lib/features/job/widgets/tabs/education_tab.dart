import 'package:flutter/material.dart';
import 'package:recruiter/core/common/widgets/education_tile.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(height: 15),
          ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return EducationTile(
                title: 'Bachelors of science in Software Engineering',
                organization: 'Sindh Madrassatul Islam University (SMIU)',
                startDate: 'Aug 2022',
                endDate: 'Present',
              );
            },
          ),
        ],
      ),
    );
  }
}
