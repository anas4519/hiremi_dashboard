import 'package:flutter/material.dart';
import 'package:hiremi_dashboard/core/common/widgets/CustomContainer/OutlinedButton.dart';
import 'package:hiremi_dashboard/core/common/widgets/RoundedContainer/roundedContainer.dart';
import 'package:hiremi_dashboard/core/utils/constants/AppSizes.dart';
import 'package:hiremi_dashboard/core/utils/constants/colors.dart';




class Languages extends StatelessWidget {
  const Languages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      showEdit: false,
      title: 'Languages',
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          RoundedContainer(
            radius: Sizes.radiusMd,
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.responsiveHorizontalSpace(context),
                vertical: Sizes.responsiveVerticalSpace(context)),
            border: Border.all(width: 0.5, color: AppColors.primary),
            child: Text(
              'English',
              style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary),
            ),
          ),
          SizedBox(
            width: Sizes.responsiveSm(context),
          ),
          RoundedContainer(
            radius: Sizes.radiusMd,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            border: Border.all(width: 0.7, color: AppColors.primary),
            child: Text(
              'Hindi',
              style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}