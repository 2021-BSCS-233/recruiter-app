import 'package:flutter/material.dart';
import 'package:recruiter/features/job/widgets/no_job_found_message.dart';

class DraftsTab extends StatelessWidget {
  const DraftsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NoJobFoundMessage(
      title: 'No draft jobs yet',
      subTitle:
      'Save a job as a draft while you’re still working on the details.',
    );
  }
}
