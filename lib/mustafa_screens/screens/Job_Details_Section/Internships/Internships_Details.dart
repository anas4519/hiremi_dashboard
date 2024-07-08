import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/core/utils/constants/AppSizes.dart';
import 'package:hiremi_dashboard/core/utils/constants/colors.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Internships/widgets/Eligibility_Criteria_About_Company.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Internships/widgets/HeaderSection.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Internships/widgets/Role_Details.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Internships/widgets/Skill_Required.dart';
import 'package:hiremi_dashboard/screens/notification_screen.dart';


class InternshipsDetailsScreen extends StatelessWidget {
  const InternshipsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Internship Details'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const NotificationScreen()));
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: Sizes.responsiveXl(context),
              right: Sizes.responsiveDefaultSpace(context),
              bottom: kToolbarHeight * 1.5,
              left: Sizes.responsiveDefaultSpace(context)),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

            /// Header Sections
            const HeaderSection(),

            SizedBox(height: Sizes.responsiveXl(context)),

            /// Role Details
            const RoleDetails(),
            SizedBox(
              height: Sizes.responsiveLg(context),
            ),
            /// Skill Required
            const SkillRequired(),
            SizedBox(
              height: Sizes.responsiveLg(context),
            ),

            /// Eligibility Criteria
            const EligibilityCriteriaAboutCompany()
          ]),
        ),
      ),
    );
  }
}

