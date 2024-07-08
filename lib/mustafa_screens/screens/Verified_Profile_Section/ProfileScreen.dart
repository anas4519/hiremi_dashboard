import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/core/utils/constants/AppSizes.dart';
import 'package:hiremi_dashboard/core/utils/constants/colors.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/BasicDetails.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/Education.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/Experience.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/KeySkills.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/Languages.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/PersonalInfo.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/PersonalLinks.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/ProfileStatusSection.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/ProfileSummary.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Verified_Profile_Section/widgets/Projects.dart';
import 'package:hiremi_dashboard/screens/notification_screen.dart';
import 'package:hiremi_dashboard/widgets/drawer_child.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => const NotificationScreen(),
              ));
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        
      ),
      drawer: const Drawer(
        child: DrawerChild(),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: Sizes.responsiveDefaultSpace(context),
              right: Sizes.responsiveDefaultSpace(context),
              bottom: kToolbarHeight),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const ProfileStatusSection(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              Divider(
                height: 0.25,
                thickness: 0.5,
                color: AppColors.secondaryText,
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const BasicDetails(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const ProfileSummary(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const KeySkills(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Education(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Experience(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Projects(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const PersonalInfo(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const PersonalLinks(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Languages()
            ],
          ),
        ),
      ),
    );
  }
}


