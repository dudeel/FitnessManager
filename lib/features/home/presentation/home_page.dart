import 'package:fitness_manager/core/styles/colors.dart';
import 'package:fitness_manager/core/styles/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
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
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
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
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
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
                    const SizedBox(height: 25),
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
            )
          ],
        ),
      ),
    );
  }
}
