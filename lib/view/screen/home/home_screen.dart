import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:behan_study/util/app_color.dart';
import 'package:behan_study/view/screen/home/widget/home_upper_widget.dart';
import 'package:behan_study/view/widget/app_text_view.dart';
import '../../../util/app_constant.dart';
import 'widget/home_lower_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //firabase screen track
    FirebaseAnalytics.instance.setCurrentScreen(screenName: 'home');
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              //upper text view
              const HomeUpperWidget(),
              //courser details
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("study material")
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    final snap = snapshot.data!.docs;
                    //Convert the documents to Maps
                    List<Map> items = snap.map((e) => e.data() as Map).toList();
                    return SizedBox(
                      height: 380,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        separatorBuilder: (context, index) => dividerSW(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: commonPaddingAll20,
                            child: Card(
                              elevation: 13,
                              shadowColor: AppColor.kBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      FadeInImage.assetNetwork(
                                        width: screenWidth(context),
                                        fit: BoxFit.cover,
                                        placeholder: 'assets/loading.gif',
                                        image: items[index]['bannerImage'],
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppColor.kBlue,
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                                backgroundColor:
                                                    AppColor.kBlue),
                                            onPressed: () {},
                                            child: appTextView(
                                                name: 'Enroll',
                                                color: AppColor.kWhite),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: commonPaddingAll,
                                      child: appTextView(
                                          name:
                                              '${items[index]['course'].toString().toUpperCase()}:${items[index]['class']}',
                                          isBold: true,
                                          size: 17),
                                    ),
                                  ),
                                  Padding(
                                    padding: commonPaddingLR,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.person,
                                          color: AppColor.kGrey,
                                        ),
                                        appTextView(
                                            name: '${items[index]['sirName']}'),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: commonPaddingLR,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            appTextView(
                                                name:
                                                    '${items[index]['fee']} \u{20B9}',
                                                color: AppColor.kBlue,
                                                isBold: true),
                                          ],
                                        ),
                                        dividerW(),
                                        SizedBox(
                                          height: 25,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    AppColor.kLightBlue,
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
                        },
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              Padding(
                padding: commonPaddingLR,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: appTextView(
                      name: 'Show more', color: AppColor.kBlue, size: 16),
                ),
              ),
              dividerH(),

              //lower banner
              const HomeLowerWidget(),
              dividerH(),
            ],
          ),
        ),
      ),
    );
  }
}
