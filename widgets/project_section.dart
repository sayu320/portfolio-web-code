import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';
import 'package:portfolio_web/utils/project_utils.dart';
import 'package:portfolio_web/widgets/project_card_widget.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //heading
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Projects',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whiteSecondary),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for (int i = 0; i < flutterProjectUtils.length; i++)
                ProjectCardWidget(
                  project: flutterProjectUtils[i],
                ),
            ],
          )
        ],
      ),
    );
  }
}
