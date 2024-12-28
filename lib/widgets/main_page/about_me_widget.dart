import 'package:flutter/material.dart';
import 'package:portofolio/utils/constants.dart';
import 'package:portofolio/widgets/sub_header.dart';

import '../../utils/common_functions.dart';
import '../profile_image_widget.dart';
import '../tech_stack_item.dart';

class AboutMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubHeader(
              number: '01.',
              heading: 'About me',
            ),
            SizedBox(
              height: CommonFunction.isApp(context) ? 26 : 42,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (CommonFunction.isApp(context)) ...[
                        Center(child: ProfileImageWidget()),
                        SizedBox(height: 16),
                      ],
                      Text(
                        "Experienced as a Senior Debug Technician, Test/Debug Technician, and IT Engineer, I have expertise in technical problem analysis, product quality testing, and IT infrastructure management. The combination of technical skills and industry understanding allows me to deliver efficient solutions that support digital transformation and improve operational performance.",
                        style: TextStyle(
                          fontSize: CommonFunction.isApp(context) ? 18 : 16,
                          color: Constants.slate,
                          fontFamily: 'FiraSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'This cross-sector experience provides a unique perspective in combining technology with industrial operational needs 💼',
                        style: TextStyle(
                          fontSize: CommonFunction.isApp(context) ? 18 : 16,
                          color: Constants.slate,
                          fontFamily: 'FiraSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "The skills I have are in the field of Electronics and Technology:",
                        style: TextStyle(
                          fontSize: CommonFunction.isApp(context) ? 18 : 16,
                          color: Constants.slate,
                          fontFamily: 'FiraSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16),
                      Wrap(
                        spacing: 16,
                        runSpacing: 12,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _generateSkillItems1(context),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _generateSkillItems2(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (!CommonFunction.isApp(context))
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: ProfileImageWidget(),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _generateSkillItems1(BuildContext context) {
    final skills1 = [
      'Software Testing \n(ICT, FCT, & Programming)',
      'Troubleshooting',
      'Hardware Maintenance',
      'Problem Solving',
      'Soldering',
      'Schematics/Diagrams',
      'Communication Skill',
      'Leadership',
      'Sistem PLC \n(Electrical, Mechanical, & \nProgramming)',
      'Electronic Repair',
      'System Control',
      'Electronic Testing',
      'Electrical',
      'Have good Analytical Skills\n& Debugging Skills',
      'Motivational Skills',
      'Ability To Work In A Team',
    ];
    return skills1
        .map(
          (skill) => Padding(
            padding:
                EdgeInsets.only(bottom: CommonFunction.isApp(context) ? 8 : 12),
            child: TechStackItem(text: skill),
          ),
        )
        .toList();
  }

  List<Widget> _generateSkillItems2(BuildContext context) {
    final skills2 = [
      'Web Development',
      'PHP',
      'Javascript',
      'Dart',
      'Programming C',
      'ReactJs',
      'Flask(Python)',
      'Framework \n(Bootstrap & Tailwind)',
      'Codeigniter',
      'Laravel 11',
      'Flutter',
      'DBMS \n(Postgresql, MySQL, & Sqlite)',
      'Amazon RDS \n(Relational Database Service)',
      'Amazon ECR \n(Elastic Container Registry)',
      'Amazon ECS \n(Elastic Container Service)',
      'Amazon S3 Bucket',
      'Amazon EC2',
      'Firebase',
      'Railway',
      'Postman',
      'Navicat, DBeaver, & Tableplus',
    ];
    return skills2
        .map(
          (skill) => Padding(
            padding:
                EdgeInsets.only(bottom: CommonFunction.isApp(context) ? 8 : 12),
            child: TechStackItem(text: skill),
          ),
        )
        .toList();
  }
}
