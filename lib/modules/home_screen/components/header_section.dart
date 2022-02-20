import 'package:atoa_ui/modules/home_screen/components/credit_card.dart';
import 'package:atoa_ui/utils/appspacing.dart';
import 'package:atoa_ui/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  final CarouselController controller = CarouselController();

  int _selectedIndex = 0;

  changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.background,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.horizontalGap),
              child: const Text(
                "Wallets",
                style: TextStyle(
                  fontSize: 34,
                  fontFamily: "Mulish-Bold",
                  color: AppColors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.verticalGap),
            Container(
                height: 200,
                width: double.infinity,
                child: CarouselSlider(
                  carouselController: controller,
                  options: CarouselOptions(
                    // height: 400.0,
                    viewportFraction: 0.90,

                    // enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    onPageChanged: (index, reason) => {changeIndex(index)},
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return const CreditCard();
                      },
                    );
                  }).toList(),
                )),
            const SizedBox(height: 10),
            Center(
              child: DotsIndicator(
                dotsCount: 5,
                position: _selectedIndex.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeColor: AppColors.deactive,
                  color: AppColors.inactiveDot,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
