import 'package:flutter/widgets.dart';

import '../../../../util/app_color.dart';
import '../../../../util/app_constant.dart';
import '../../../widget/app_text_view.dart';

class HomeUpperWidget extends StatelessWidget {
  const HomeUpperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: commonPaddingAll20,
          child: appTextView(name: 'Learn and Evolve', isBold: true, size: 25),
        ),
        Padding(
          padding: commonPaddingAll20,
          child: Container(
            width: screenWidth(context),
            height: 150,
            decoration: BoxDecoration(
              color: AppColor.kBlue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                dividerSW(),
                Image.asset(
                  icbanner1,
                  height: 150,
                ),
                dividerW(),
                dividerW(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    appTextView(
                        name: 'Become', isBold: true, color: AppColor.kWhite),
                    dividerSH(),
                    appTextView(
                        name: 'Mater in Data',
                        isBold: true,
                        color: AppColor.kWhite),
                    dividerSH(),
                    appTextView(
                        name: 'Science', isBold: true, color: AppColor.kWhite),
                    dividerSH(),
                    appTextView(
                        name: 'by asif abdualrahman',
                        isBold: true,
                        size: 8,
                        color: AppColor.kWhite),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: commonPaddingAll20,
          child: appTextView(name: 'Futured Course', isBold: true, size: 20),
        ),
      ],
    );
  }
}
