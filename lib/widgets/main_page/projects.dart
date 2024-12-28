import 'package:flutter/material.dart';
import 'package:portofolio/widgets/project_showcase.dart';
import 'package:portofolio/widgets/sub_header.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubHeader(
            number: '03.',
            heading: 'Some Things I’ve Built',
          ),
          SizedBox(
            height: 32,
          ),

          /// todo change this
          /// todo generic
          Expanded(
            child: ProjectShowcase(
              title: 'System Helpdesk',
              subTitle:
                  'Website solutions or digital platforms designed to handle support requests and complaints from users',
              githubUrl:
                  'https://github.com/HidayatulNasution/system_helpdesk', // Ganti dengan URL GitHub proyek
              // playStoreUrl:
              //     '#', // Ganti dengan URL Play Store
            ),
          ),
        ],
      ),
    );
  }
}
