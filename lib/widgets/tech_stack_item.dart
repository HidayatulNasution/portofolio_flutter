import 'package:flutter/material.dart';
import 'package:portofolio/utils/common_functions.dart';
import 'package:portofolio/utils/constants.dart';

class TechStackItem extends StatelessWidget {
  final String text;

  TechStackItem({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.play_arrow,
          size: CommonFunction.isApp(context) ? 20 : 14,
          color: Constants.green,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: CommonFunction.isApp(context) ? 18 : 16,
            color: Constants.slate,
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
