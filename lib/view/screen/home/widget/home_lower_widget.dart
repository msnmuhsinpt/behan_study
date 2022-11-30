import 'package:flutter/material.dart';

import '../../../../util/app_color.dart';
import '../../../../util/app_constant.dart';
import '../../../widget/app_text_view.dart';

class HomeLowerWidget extends StatelessWidget {
  const HomeLowerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          icSlider,
          width: screenWidth(context),
        ),
        Padding(
          padding: commonPaddingAll,
          child: Align(
            alignment: Alignment.topLeft,
            child: appTextView(
                name: 'Join the Community',
                color: AppColor.kWhite,
                isBold: true,
                size: 20),
          ),
        )
      ],
    );
  }
}
