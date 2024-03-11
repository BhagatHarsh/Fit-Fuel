import 'package:flutter/material.dart';
import 'package:fitfuel/components/profile/stats.dart';

class StatusCatalogue extends StatefulWidget {
  const StatusCatalogue({super.key});

  @override
  State<StatusCatalogue> createState() => _StatusCatalogueState();
}

class _StatusCatalogueState extends State<StatusCatalogue> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatsWidget(
              title: 'Weight',
              parameter: '110 lbs',
            ),
            StatsWidget(
              title: 'Height',
              parameter: "5'4''",
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatsWidget(
              title: 'Age',
              parameter: '28 years',
            ),
            StatsWidget(
              title: 'BMI',
              parameter: "19.0",
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatsWidget(
              title: 'Body Fat',
              parameter: '22 %',
            ),
            StatsWidget(
              title: 'Water',
              parameter: "56 %",
            ),
          ],
        ),
      ],
    );
  }
}
