import 'package:flutter/material.dart';
import 'package:portofolio/utils/common_functions.dart';
import 'package:portofolio/utils/constants.dart';

class CompanyJobInfo extends StatelessWidget {
  final int selectedIndex;

  CompanyJobInfo({
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    /// todo generic
    if (selectedIndex == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('IT Engineer', 'PT Aptaworks', '#', context),
          SizedBox(
            height: 8,
          ),
          _period('April 2023', 'Desember 2024', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Develop and maintain web applications (front-end and back-end)',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole('Work with databases and API', context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Create web application product solution by developing, implementing, and maintaining product application',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Develop systems and applications using complex algorithms to deliver business functions or architectural components',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Managed Installation, Upgrade and deplopment projects and provided on-site direction for network engineers',
              context),
        ],
      );
    }
    if (selectedIndex == 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// todo generic
          _position(
              'Test/Debug Technician', 'PT OSI Electronics', '#', context),
          SizedBox(
            height: 8,
          ),
          _period('Januari 2021', 'Januari 2023', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Setup the ICT and FCT tester in accordance with the production schedule, control and ensure the tester runs well',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Perform maintenance processes on all testers in accordance with the schedule that has been set',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Debug PCBA that failed during production to achieve the specified target shipment',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Report the results of debugging that has been done into the "Test Management System" software',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Work with Test Engineer for any issue and concern and also improvement',
              context),
          SizedBox(
            height: 12,
          ),
        ],
      );
    } else if (selectedIndex == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Senior Debug', 'PT Tectron Manufacturing', '#', context),
          SizedBox(
            height: 8,
          ),
          _period('Mei 2019', 'November 2020', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Troubleshooting of product failure and perform simple debugging on tester when there is any issue during FA and feedback to related team',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              "Can execute 1st level troubleshooting during testing and feedback to engineer Participate in customer complain regarding the product failure",
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              "To support programs and activities that will help to improve working environment",
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              "Management Team, Scheduling , and other related task as assigned by Manager",
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              "Create reports on troubleshooting results & team performance",
              context),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      );
    }
  }

  Widget _position(
      String position, String company, String link, BuildContext context) {
    return Row(
      children: [
        Text(
          position,
          style: TextStyle(
            fontSize: 20,
            color: Constants.white,
            fontFamily: 'FiraSans',
            fontWeight: CommonFunction.isApp(context)
                ? FontWeight.w600
                : FontWeight.normal,
          ),
        ),
        CommonFunction.isApp(context)
            ? Container()
            : InkWell(
                onTap: () {
                  CommonFunction.openFromUrl(link);
                },
                child: Text(
                  ' @' + company,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                    color: Constants.green,
                  ),
                ),
              ),
      ],
    );
  }

  Widget _period(String start, String end, BuildContext context) {
    return Text(
      '$start - $end',
      style: TextStyle(
        fontSize: CommonFunction.isApp(context) ? 18 : 16,
        color: Constants.slate,
        fontFamily: 'FiraSans',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _jobRole(String value, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2),
          child: Icon(
            Icons.play_arrow,
            size: CommonFunction.isApp(context) ? 20 : 16,
            color: Constants.green,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
