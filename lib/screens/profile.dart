import 'package:fitfuel/components/profile/age.dart';
import 'package:fitfuel/components/profile/editButton.dart';
import 'package:fitfuel/components/profile/stats.dart';
import 'package:fitfuel/components/profile/subHeading.dart';
import 'package:fitfuel/components/profile/userName.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(),
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
              child: Center(
                child: CircleAvatar(
                  radius: 64, // Adjust the radius as needed
                  backgroundImage: AssetImage('assets/images/png/face.png'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: UserNameWidget(
                  userName: 'Mia',
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: AgeButtonWidget(age: 'San Francisco, 28 years old')),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(child: Flexible(child: CustomExpandedButton())),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: SubHeadingWidget(subHeading: 'Fitness Summary'),
            ),
            SizedBox(height: 20),
            Column(
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
            )
          ],
        ),
      ),
    );
  }
}

      // Figma Flutter Generator Depth4frame0Widget - FRAME - VERTICAL
      