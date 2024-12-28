import 'package:flutter/material.dart';
import 'package:portofolio/utils/common_functions.dart';
import 'package:portofolio/utils/constants.dart';

import 'bottom_line_widget.dart';

class EmailWidget extends StatefulWidget {
  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  late bool _emailHover;
  late double _animatedPaddingValueBottom;
  late double _animatedPaddingValueTop;

  @override
  void initState() {
    super.initState();
    _emailHover = false;
    _animatedPaddingValueBottom = 0;
    _animatedPaddingValueTop = 24;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: InkWell(
            onTap: () {
              CommonFunction.openMail();
            },
            onHover: (val) {
              if (val) {
                setState(() {
                  _emailHover = true;
                  _animatedPaddingValueTop = 18;
                  _animatedPaddingValueBottom = 6;
                });
              } else {
                setState(() {
                  _emailHover = false;
                  _animatedPaddingValueTop = 24;
                  _animatedPaddingValueBottom = 0;
                });
              }
            },
            child: AnimatedPadding(
              curve: Curves.easeIn,
              padding: EdgeInsets.only(
                left: _animatedPaddingValueTop,
                right: _animatedPaddingValueBottom,
              ),
              duration: Duration(milliseconds: 100),
              child: Text(
                Constants.email,

                /// todo style from TextStyle
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.w400,
                  color: _emailHover ? Constants.green : Constants.slate,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        !CommonFunction.isApp(context)
            ? InkWell(
                onTap: () {
                  CommonFunction.openFromUrl(
                      'https://hidayatul-nasution.web.app/');
                },
                child: Tooltip(
                  message: 'My Website',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Constants.green,
                    fontFamily: 'FiraSans',
                  ),
                  child: Icon(
                    Icons.whatshot,
                    size: 20,
                    color: Constants.lightestSlate,
                  ),
                ),
              )
            : Container(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: BottomLineWidget(),
        ),
      ],
    );
  }
}
