import 'package:fitfuel/components/profile/age.dart';
import 'package:fitfuel/components/profile/editButton.dart';
import 'package:fitfuel/components/profile/statsCatalogue.dart';
import 'package:fitfuel/components/profile/Heading.dart';
import 'package:fitfuel/components/profile/subHeading.dart';
import 'package:fitfuel/components/profile/subsubHeading.dart';
import 'package:fitfuel/components/profile/userName.dart';
import 'package:fitfuel/components/profile/weekly.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(),
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
              child: Center(
                child: CircleAvatar(
                  radius: 64, // Adjust the radius as needed
                  backgroundImage: AssetImage('assets/images/png/face.png'),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: UserNameWidget(
                  userName: 'Mia',
                ),
              ),
            ),
            const Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: AgeButtonWidget(age: 'San Francisco, 28 years old')),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(child: EditProfileButton()),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: SubHeadingWidget(subHeading: 'Fitness Summary'),
            ),
            const SizedBox(height: 20),
            const StatusCatalogue(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: SubHeadingWidget(subHeading: 'Activity'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
              child: SubSubHeadingWidget(subsubHeading: 'Calories Burned'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: HeadingWidget(heading: '2,000 cal'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: WeeklyStatusWidget(
                title: 'This Week',
                change: '+10 %',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/png/chart.png'),
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

      // Figma Flutter Generator Depth4frame0Widget - FRAME - VERTICAL
      