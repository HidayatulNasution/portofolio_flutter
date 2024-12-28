import 'package:flutter/material.dart';
import 'package:portofolio/utils/common_functions.dart';
import 'package:portofolio/widgets/main_page/about_me_widget.dart';
import 'package:portofolio/widgets/main_page/experience.dart';
import 'package:portofolio/widgets/main_page/introduction.dart';
import 'package:portofolio/widgets/main_page/projects.dart';
import 'package:portofolio/widgets/project_showcase.dart';

import '../other_noteworthy_projects/other_projects.dart';

class AppHomeBody extends StatelessWidget {
  final PageController pageController;

  AppHomeBody({
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 4,
          ),
          child: Introduction(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: AboutMeWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Experience(),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
            top: 48,
            bottom: 48,
          ),
          child: Projects(),
        ),

        /// todo generic
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Helpdesk Mobile',
            'App solutions or digital platforms designed to handle support requests and complaints from users',
            appUrl: 'https://github.com/HidayatulNasution/helpdesk_mobile',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Pancong Lumer',
            'Pancong Lumer The Product Services sharing platform has a responsive front-end design built using React and Tailwind',
            appUrl: 'https://github.com/panconglumer/Pancong_Lumer',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Pelayanan Pendidikan',
            'This platform has a responsive interface built with Reactjs and Python(Flask)',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Calculate Optimize',
            'A service that can help users plan optimal routes for travel or deliveries',
            appUrl: 'https://github.com/hidayatulnasution9/master_react',
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
                top: 2,
                bottom: 2,
              ) +
              (CommonFunction.isApp(context)
                  ? EdgeInsets.symmetric(horizontal: 2)
                  : EdgeInsets.zero),
          // child: OtherProjects(),
        ),
      ],
    );
  }

  Widget _showcaseWidget(
    String title,
    String subtitle, {
    String appUrl = '',
    String github = '',
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: ProjectShowcase(
        title: title,
        subTitle: subtitle,
        // playStoreUrl: appUrl,
        githubUrl: github,
      ),
    );
  }
}
