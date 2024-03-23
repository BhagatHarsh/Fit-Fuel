import 'package:fitfuel/components/home/banner.dart';
import 'package:fitfuel/components/home/mainTitle.dart';
import 'package:fitfuel/components/profile/subsubHeading.dart';
import 'package:fitfuel/components/workout/logbutton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

 Future<void> _launchPaytm() async {
    final Uri paytmUrl = Uri.parse('https://paytm.com/'); // Replace with the actual Paytm URL scheme
    try {
      await launchUrl(paytmUrl);
    } catch (e) {
      // Handle the error, e.g., show a message to the user
      print('Could not launch $paytmUrl: $e');
    }
 }

class JoinPage extends StatefulWidget {
  const JoinPage({super.key});

  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleWiget(key: Key("Join!"), titleText: 'Premium Membership'),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/png/limitless.png',
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: TitleWiget(
              key: Key("offer"),
              titleText: 'Take Your Fitness To The',
            ),
          ),
          const Center(
            child: TitleWiget(
              key: Key("Bottom"),
              titleText: 'Next Level',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: SubSubHeadingWidget(
                subsubHeading:
                    'Get access to personalized workouts and nutritional recipes, executive classes and more'),
          ),
          const BannerWidget(
            duration: 'Monthly',
            price: '\$14.99',
            condition1: 'Billed monthly',
            condition2: 'Cancel anytime',
          ),
          const SizedBox(
            height: 30,
          ),
          const BannerWidget(
            duration: 'Quaterly',
            price: '\$59.99',
            condition1: 'Best Price',
            condition2: 'Cancel anytime',
          ),
          const SizedBox(
            height: 30,
          ),
          const BannerWidget(
            duration: 'Yearly',
            price: '\$119.99',
            condition1: 'Best Value',
            condition2: 'Save 33%',
          ),
          const SizedBox(
            height: 10,
          ),
          const LogButtonWidget(
            onPressed: _launchPaytm,
            text: 'Buy',
            scale: 0.9,
          )
        ],
      ),
    );
  }
}
