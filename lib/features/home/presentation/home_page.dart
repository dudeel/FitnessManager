import 'dart:convert';

import 'package:fitness_manager/core/styles/colors.dart';
import 'package:fitness_manager/features/training/training_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/info.json")
        .then((value) {
      info = json.decode(value);
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
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: theme.textTheme.titleMedium,
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Your program",
                  style: theme.textTheme.titleSmall,
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    Get.to(() => const TrainingPage());
                  },
                  child: Row(
                    children: [
                      Text(
                        "Details",
                        style: theme.textTheme.labelLarge,
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: theme.textTheme.labelLarge?.color,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColor.gradientFirst.withOpacity(0.8),
                    AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(5, 10),
                    blurRadius: 10,
                    color: AppColor.gradientSecond.withOpacity(0.2),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Legs Toning\nand Glutes Workout",
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 20,
                          color: AppColor.homePageContainerTextSmall,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '60 min',
                          style: theme.textTheme.bodySmall,
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.play_circle_fill,
                          color: AppColor.homePageContainerTextSmall,
                          size: 60,
                          shadows: [
                            BoxShadow(
                              offset: const Offset(2, 5),
                              blurRadius: 10,
                              color: AppColor.gradientFirst.withOpacity(1),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 140,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/banner.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          offset: const Offset(8, 10),
                          color: AppColor.gradientSecond.withOpacity(0.3),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(-1, -5),
                          color: AppColor.gradientSecond.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    margin:
                        const EdgeInsets.only(left: 20, right: 220, bottom: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/girl_like.png",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin:
                        const EdgeInsets.only(left: 140, right: 20, top: 30),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You are doing great",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "keep it up\nstick to your plan",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Area of focus",
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall,
                )
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.builder(
                    itemCount: info.length.toDouble() ~/ 2,
                    itemBuilder: (_, i) {
                      int a = 2 * i;
                      int b = 2 * i + 1;
                      return Row(
                        children: [
                          Container(
                            height:
                                (MediaQuery.of(context).size.width - 90) / 2,
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            padding: const EdgeInsets.only(bottom: 5),
                            margin: const EdgeInsets.only(
                              left: 30,
                              bottom: 20,
                              top: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  info[a]['img'],
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(5, 5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.1),
                                ),
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(-5, -5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[a]['title'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.homePageSubtitle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height:
                                (MediaQuery.of(context).size.width - 90) / 2,
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            padding: const EdgeInsets.only(bottom: 5),
                            margin: const EdgeInsets.only(
                              left: 30,
                              bottom: 20,
                              top: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  info[b]['img'],
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(5, 5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.1),
                                ),
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(-5, -5),
                                  color:
                                      AppColor.gradientSecond.withOpacity(0.1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[b]['title'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.homePageSubtitle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
