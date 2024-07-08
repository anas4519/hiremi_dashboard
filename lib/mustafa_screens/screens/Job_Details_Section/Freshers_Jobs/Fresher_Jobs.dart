import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/core/utils/constants/AppSizes.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Freshers_Jobs/widgets/Eligibility_Criteria_About_Company.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Freshers_Jobs/widgets/HeaderSection.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Freshers_Jobs/widgets/Role_Details.dart';
import 'package:hiremi_dashboard/mustafa_screens/screens/Job_Details_Section/Freshers_Jobs/widgets/Skill_Required.dart';
import 'package:hiremi_dashboard/screens/notification_screen.dart';




class FresherJobsScreen extends StatelessWidget {
  const FresherJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Fresher Jobs'),
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
          child: Padding(padding: EdgeInsets.only(
              top: Sizes.responsiveXl(context),
              right: Sizes.responsiveDefaultSpace(context),
              bottom: kToolbarHeight * 1.5,
              left: Sizes.responsiveDefaultSpace(context)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [

              /// Header Sections
              const HeaderSectionFresher(),

              SizedBox(height: Sizes.responsiveXl(context)),

              /// Role Details
              const RoleDetailsFresher(),
              SizedBox(
                height: Sizes.responsiveLg(context),
              ),

              /// Skill Required
              const SkillRequiredFresher(),
              SizedBox(
                height: Sizes.responsiveLg(context),
              ),

              /// Eligibility Criteria
              const EligibilityCriteriaAboutCompanyFresher()
            ]),
          ),
        )
    );
  }
}


