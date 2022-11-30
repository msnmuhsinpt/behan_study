import 'package:behan_study/util/app_color.dart';
import 'package:behan_study/view/screen/home/widget/home_upper_widget.dart';
import 'package:behan_study/view/widget/app_text_view.dart';
import 'package:flutter/material.dart';
import '../../../util/app_constant.dart';
import 'widget/home_lower_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            //upper text view
            const HomeUpperWidget(),
            //courser details
            ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 3,
                separatorBuilder: (context, index) => dividerSW(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: commonPaddingAll20,
                    child: Card(
                      elevation: 2,
                      shadowColor: AppColor.kBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                icTest,
                                width: screenWidth(context),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.kBlue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.bookmark_border,
                                      color: AppColor.kWhite,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: SizedBox(
                                  height: 40,
                                  width: 90,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        backgroundColor: AppColor.kBlue),
                                    onPressed: () {},
                                    child: appTextView(
                                        name: 'Entroll',
                                        color: AppColor.kWhite),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: commonPaddingAll,
                              child: appTextView(
                                  name: 'Flutter : MeterialClass',
                                  isBold: true,
                                  size: 17),
                            ),
                          ),
                          Padding(
                            padding: commonPaddingLR,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.person,
                                  color: AppColor.kGrey,
                                ),
                                appTextView(name: 'Mathu Raj'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: commonPaddingLR,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                appTextView(
                                    name: '1000 \u{20B9}',
                                    color: AppColor.kBlue,
                                    isBold: true),
                                dividerW(),
                                SizedBox(
                                  height: 25,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColor.kLightBlue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        )),
                                    onPressed: () {},
                                    child: appTextView(
                                        name: 'Best Seller',
                                        color: AppColor.kBlue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          dividerSH(),
                        ],
                      ),
                    ),
                  );
                }),

            //lower banner
            const HomeLowerWidget(),
          ],
        ),
      ),
    );
  }
}
