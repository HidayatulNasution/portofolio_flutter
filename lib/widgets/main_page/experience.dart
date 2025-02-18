import 'package:flutter/material.dart';
import 'package:portofolio/utils/common_functions.dart';
import 'package:portofolio/widgets/company_job_info.dart';
import 'package:portofolio/widgets/company_tile.dart';
import 'package:portofolio/widgets/sub_header.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  late List<String> _companyList;
  List<bool> _companySelected = <bool>[];
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();

    /// todo move to constants
    _companyList = [
      'PT Tectron Manufacturing',
      'PT OSI Electronics',
      'PT Aptaworks',
    ];
    _selectedIndex = _companyList.length - 1;
    for (int i = 0; i < _companyList.length - 1; i++) {
      _companySelected.add(false);
    }
    _companySelected.add(true);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (CommonFunction.isApp(context)) {
      _selectedIndex = 0;
      _companyList = _companyList.reversed.toList();
      _companySelected = _companySelected.reversed.toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: CommonFunction.isApp(context) ? 84 : 10,
          ),
          child: SubHeader(
            number: '02.',
            heading: 'Experience',
          ),
        ),
        SizedBox(
          height: 32,
        ),
        CommonFunction.isApp(context)
            ? Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 64,
                      child: ListView.builder(
                        itemCount: _companyList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        reverse: CommonFunction.isApp(context) ? false : true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                                _companySelected[index] = true;
                                for (int i = 0; i < _companyList.length; i++) {
                                  if (i != index) {
                                    _companySelected[i] = false;
                                  }
                                }
                              });
                            },
                            child: Center(
                              child: CompanyTile(
                                val: _companyList[index],
                                selected: _companySelected[index],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 12,
                      ),
                      child: CompanyJobInfo(
                        selectedIndex: CommonFunction.isApp(context)
                            ? _selectedIndex
                            : _companyList.length - 1 - _selectedIndex,
                      ),
                    ),
                  ],
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: _companyList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      reverse: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                              _companySelected[index] = true;
                              for (int i = 0; i < _companyList.length; i++) {
                                if (i != index) {
                                  _companySelected[i] = false;
                                }
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4) +
                                EdgeInsets.only(right: 64),
                            child: CompanyTile(
                              val: _companyList[index],
                              selected: _companySelected[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CompanyJobInfo(
                      selectedIndex: _companyList.length - 1 - _selectedIndex,
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
