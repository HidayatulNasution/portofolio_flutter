import 'package:flutter/material.dart';
import 'package:portofolio/utils/constants.dart';
import 'package:portofolio/widgets/project_showcase.dart';
import 'package:portofolio/widgets/social_handles/social_handles.dart';

import '../bottom_line_widget.dart';
import '../email_widget.dart';
import '../main_page/about_me_widget.dart';
import '../main_page/experience.dart';
import '../main_page/introduction.dart';
import '../main_page/projects.dart';
import '../other_noteworthy_projects/other_projects.dart';

class WebHomeBody extends StatelessWidget {
  final PageController pageController;

  WebHomeBody({
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: RawScrollbar(
          controller: pageController,
          thickness: 8,
          interactive: true,
          thumbColor: Constants.green,
          radius: Radius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SocialHandles(),
                    SizedBox(
                      height: 16,
                    ),
                    BottomLineWidget(),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 128),
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      controller: pageController,
                      children: [
                        Introduction(),
                        AboutMeWidget(),
                        Experience(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Projects(),
                        ),

                        /// todo pass this through constants
                        _showcaseWidget(
                          'Helpdesk Mobile',
                          'App solutions or digital platforms designed to handle support requests and complaints from users',
                        ),
                        _showcaseWidget(
                          'Pancong Lumer',
                          'Pancong Lumer The Product Services sharing platform has a responsive front-end design built using React and Tailwind',
                        ),
                        _showcaseWidget(
                          'Pelayanan Pendidikan',
                          'This platform has a responsive interface built with Reactjs and Python(Flask)',
                        ),
                        _showcaseWidget(
                          'Calculate Optimize',
                          'A service that can help users plan optimal routes for travel or deliveries',
                          appUrl:
                              'https://github.com/hidayatulnasution9/master_react',
                        ),

                        // Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 2),
                        //   // child: OtherProjects(),
                        // ),
                      ],
                    ),
                  ),
                ),
                EmailWidget(),
              ],
            ),
          ),
        ),
      ),
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
