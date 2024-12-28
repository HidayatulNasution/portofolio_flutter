import 'package:flutter/material.dart';
import 'package:portofolio/utils/common_functions.dart';
import 'package:portofolio/utils/constants.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Tambahkan untuk scroll
      child: Container(
        padding: EdgeInsets.all(16), // Tambahkan padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi, my name is',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: CommonFunction.isApp(context) ? 24 : 16,
                color: Constants.green,
                fontFamily: 'FiraSans',
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Hidayatul Afriahman Nasution',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: CommonFunction.isApp(context) ? 48 : 64,
                color: Constants.white,
                fontFamily: 'FiraSans',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Professional In Technology & Electronic',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'FiraSans',
                fontSize: CommonFunction.isApp(context) ? 24 : 34,
                color: Constants.lightSlate,
              ),
            ),
            SizedBox(height: 32),
            Text(
              "A Professional with Experience in the Manufacturing and IT industry",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: 'FiraSans',
                color: Constants.slate,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
