import 'package:flutter/material.dart';
import 'package:portofolio/utils/constants.dart';
import './social_handles/social_handle_item.dart';

import '../utils/common_functions.dart';

class ProjectShowcase extends StatefulWidget {
  final String title;
  final String subTitle;
  final String githubUrl;
  // final String playStoreUrl;

  ProjectShowcase({
    required this.title,
    required this.subTitle,
    required this.githubUrl,
    // required this.playStoreUrl,
  });

  @override
  _ProjectShowcaseState createState() => _ProjectShowcaseState();
}

class _ProjectShowcaseState extends State<ProjectShowcase> {
  late List<Widget> _showcaseList;
  late String _playStore;

  @override
  void initState() {
    /// todo generic
    _playStore = 'playstore_dark';
    if (widget.title == 'Helpdesk Mobile') {
      _showcaseList = [
        _placeholder('y1'),
        _placeholder('y2'),
        _placeholder('y3'),
        _placeholder('y4'),
        _placeholder('y5'),
        _placeholder('y6'),
        _placeholder('y7'),
        _placeholder('y8'),
        _placeholder('y9'),
        _placeholder('y10'),
        _placeholder('y11'),
        _placeholder('y12'),
        _placeholder('y13'),
        _placeholder('y14'),
        _placeholder('y15'),
      ];
    } else if (widget.title == 'System Helpdesk') {
      _showcaseList = [
        _placeholder('janhit_1'),
        _placeholder('janhit_2'),
        _placeholder('janhit_4'),
        _placeholder('janhit_5'),
        _placeholder('janhit_6'),
      ];
    } else if (widget.title == 'Pancong Lumer') {
      _showcaseList = [
        _placeholder('intellect_1'),
        _placeholder('intellect_2'),
        _placeholder('intellect_3'),
        _placeholder('intellect_4'),
        _placeholder('intellect_5'),
      ];
    } else if (widget.title == 'Pelayanan Pendidikan') {
      _showcaseList = [
        _placeholder('intellect_d_1'),
      ];
    } else if (widget.title == 'Calculate Optimize') {
      _showcaseList = [
        _placeholder('batuni_1'),
      ];
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                widget.title.toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Constants.lightestSlate,
                  fontFamily: 'FiraSans',
                ),
              ),
              // SizedBox(
              //   width: widget.playStoreUrl != null ? 16 : 0,
              // ),
              // widget.playStoreUrl != null
              //     ? InkWell(
              //         onTap: () {
              //           CommonFunction.openFromUrl(widget.playStoreUrl);
              //         },
              //         child: Card(
              //           shadowColor: Constants.green,
              //           color: Constants.navy,
              //           elevation: 5,
              //           child: Image.asset(
              //             'asset/google_play.png',
              //             fit: BoxFit.fill,
              //             width: 130,
              //             height: 36,
              //           ),
              //         ),
              //       )
              // : Container(),
              widget.githubUrl != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: InkWell(
                        onTap: () {
                          CommonFunction.openFromUrl(widget.githubUrl);
                        },
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              _playStore = 'github_light';
                            });
                          } else {
                            setState(() {
                              _playStore = 'github_dark';
                            });
                          }
                        },
                        child: Image.asset('asset/github-sign.png',
                            width: 24, height: 24, color: Colors.white),
                      ),
                    )
                  : Container(),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            widget.subTitle,
            style: TextStyle(
              fontSize: CommonFunction.isApp(context) ? 18 : 16,
              color: Constants.green,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _showcaseList,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _placeholder(String image) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: widget.title == 'Pelayanan Pendidikan' ? 16 : 0,
      ),
      child: Image.asset(
        'asset/$image.png',
      ),
    );
  }
}
