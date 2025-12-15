import 'package:flutter/material.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/action_button.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumeTab extends StatelessWidget {
  const ResumeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          child: SfPdfViewer.asset('assets/docs/Resume1.pdf'),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: SizedBox(
            height: 32,
            width: 105,
            child: ActionButton(
              inverted: true,
              buttonText: 'Download',
              onPress: () {},
              suffixIcon: AppIcons.downloadIcon,
            ),
          ),
        ),
      ],
    );
  }
}
