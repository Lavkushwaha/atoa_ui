import 'package:atoa_ui/modules/home_screen/components/circle.dart';
import 'package:atoa_ui/utils/appspacing.dart';
import 'package:atoa_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: AppSpacing.horizontalGap / 2,
          right: AppSpacing.horizontalGap / 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          // height: ,
          width: MediaQuery.of(context).size.width,

          decoration: BoxDecoration(
              color: AppColors.primaryBlue,
              borderRadius: BorderRadius.circular(16)),

          child: Stack(
            children: [
              const Positioned(
                bottom: -30,
                right: -100,

                child: Circle(),
                // child: SvgPicture.asset(
                //   Assets.eclipse1,
                //   // color: AppColors.active,
                //   color: AppColors.deactive,

                //   // height: 20,
                //   // width: 20,
                // ),
              ),
              Positioned(
                bottom: -130,
                left: 0,
                right: -100,
                // child: SvgPicture.asset(
                //   Assets.eclipse2,
                //   // color: AppColors.active,
                //   color: AppColors.deactive,

                //   // height: 20,
                //   // width: 20,
                // ),
                child: Circle(),
              ),
              Container(
                padding: const EdgeInsets.all(AppSpacing.horizontalGap),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sales Team",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Mulish-Light",
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "S\$2,617.14",
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: "Mulish-Regular",
                                color: AppColors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: AppColors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.info_outline,
                              size: 17,
                              color: AppColors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "****",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.boxBackground.withOpacity(0.5),
                              fontFamily: "OCR",
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "****",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.boxBackground.withOpacity(0.5),
                              fontFamily: "OCR",
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "****",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.boxBackground.withOpacity(0.5),
                              fontFamily: "OCR",
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "4483",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.boxBackground,
                              fontFamily: "OCR",
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CARD TYPE",
                              style: TextStyle(
                                  fontSize: 10,
                                  color:
                                      AppColors.boxBackground.withOpacity(0.8),
                                  fontFamily: "Mulish-Regular",
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "VIRTUAL",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: AppColors.boxBackground,
                                  fontFamily: "OCR",
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "VALID THRU",
                              style: TextStyle(
                                  fontSize: 10,
                                  color:
                                      AppColors.boxBackground.withOpacity(0.8),
                                  fontFamily: "Mulish-Regular",
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "12/22",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: AppColors.boxBackground,
                                  fontFamily: "OCR",
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
