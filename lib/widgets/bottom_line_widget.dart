import 'package:flutter/material.dart';
import 'package:portofolio/utils/constants.dart';

class BottomLineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: 150,
        width: 1,
        color: Constants.white,
      ),
    );
  }
}
