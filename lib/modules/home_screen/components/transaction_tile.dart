import 'package:atoa_ui/utils/appspacing.dart';
import 'package:atoa_ui/utils/assets.dart';
import 'package:atoa_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final bool? isHeader;
  final String? date;
  final String? amount;
  final String? title;
  final String? subTitle;

  final String? image;

  const TransactionTile({
    Key? key,
    this.isHeader,
    this.date,
    this.amount,
    this.title,
    this.subTitle,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.horizontalGap,
      ),
      child: isHeader == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: amount.toString().split(".")[0],
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontFamily: "Mulish-Light",
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                        text: "." + amount.toString().split(".")[1] + " S\$",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Mulish-Light",
                            color: AppColors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: AppColors.boxBackground,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(image ?? Assets.demo1))),
                    ),
                    const SizedBox(
                      width: AppSpacing.horizontalGap,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Mulish-Light",
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          subTitle.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Mulish-Light",
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: amount.toString().split(".")[0],
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Mulish-Light",
                        color: AppColors.black,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                        text: "." + amount.toString().split(".")[1] + " S\$",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Mulish-Light",
                            color: AppColors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
