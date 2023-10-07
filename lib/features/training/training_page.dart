import 'package:fitness_manager/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fitness_manager/core/styles/colors.dart';
import 'dart:convert';

import 'package:get/get.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  List videoInfo = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/video_info.json")
        .then((value) {
      videoInfo = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.gradientFirst.withOpacity(0.9),
              AppColor.gradientSecond,
            ],
            begin: const FractionalOffset(
              0.0,
              0.4,
            ),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => const HomePage());
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                          color: AppColor.secondPageIconColor,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: AppColor.secondPageIconColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Legs Toning\nand Glutes Workout",
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.gradientSecond.withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 20,
                              color: AppColor.secondPageIconColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "68 min",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.secondPageTitleColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 220,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.gradientSecond.withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              size: 20,
                              color: AppColor.secondPageIconColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Resistent band, kettebel",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.secondPageTitleColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                  ),
                  color: AppColor.homePageBackground,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        Text(
                          "Circular 1 : Legs Toning",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.homePageTitle,
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Icon(
                              Icons.loop,
                              size: 20,
                              color: AppColor.homePageIcons,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "3 sec",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.setsColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        itemCount: videoInfo.length,
                        itemBuilder: (_, int index) {
                          return GestureDetector(
                            onTap: () {
                              debugPrint(index.toString());
                            },
                            child: SizedBox(
                              height: 140,
                              width: 80,
                              child: Column(
                                children: [
                                  const SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                videoInfo[index]["thumbnail"],
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            videoInfo[index]["title"],
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: AppColor.homePageTitle,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: Text(
                                              videoInfo[index]["time"],
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey[500],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFeaeefc),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "15s rest",
                                            style: TextStyle(
                                              color: Color(0xFF839fed),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          for (int i = 0; i < 70; i++)
                                            i.isOdd
                                                ? Container(
                                                    width: 3,
                                                    height: 1,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF839fed),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                    ),
                                                  )
                                                : Container(
                                                    width: 3,
                                                    height: 1,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                    ),
                                                  ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
