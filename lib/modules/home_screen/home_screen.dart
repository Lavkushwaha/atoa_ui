import 'package:atoa_ui/modules/home_screen/components/header_section.dart';
import 'package:atoa_ui/modules/home_screen/components/transaction_tile.dart';
import 'package:atoa_ui/shared/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:atoa_ui/utils/appspacing.dart';
import 'package:atoa_ui/utils/assets.dart';
import 'package:atoa_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rubber/rubber.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late RubberAnimationController controller;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    controller = RubberAnimationController(
        vsync: this,
        initialValue: 0.5,
        halfBoundValue: AnimationControllerValue(percentage: 0.5),
        duration: Duration(milliseconds: 200));
    super.initState();
  }

  Widget _getUpperLayer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.horizontalGap),
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Mulish-Bold',
                  fontWeight: FontWeight.w900,
                ),
              ),
              SvgPicture.asset(
                Assets.filterIcon,
                color: AppColors.black,
                height: 20,
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: AppSpacing.verticalGap,
          ),
          const TransactionTile(
            isHeader: true,
            date: 'Today',
            amount: "–260.99",
          ),
          const TransactionTile(
            isHeader: false,
            date: 'Today',
            title: "Grab Taxi",
            subTitle: "Sales Team",
            amount: "10.90",
            image: Assets.demo1,
          ),
          const TransactionTile(
            isHeader: false,
            date: 'Today',
            title: "Singapore Airlines",
            subTitle: "Business Travel",
            amount: "250.09",
            image: Assets.demo,
          ),

          //HEADER
          const TransactionTile(
            isHeader: true,
            date: '9, March',
            amount: "+1,269.01",
          ),
          const TransactionTile(
            isHeader: false,
            // date: 'Today',
            title: "Grab Taxi",
            subTitle: "Sales Team",
            amount: "10.90",
            image: Assets.demo1,
          ),
          const TransactionTile(
            isHeader: false,
            // date: 'Today',
            title: "Singapore Airlines",
            subTitle: "Business Travel",
            amount: "400.09",
            image: Assets.demo,
          ),
          const TransactionTile(
            isHeader: false,
            // date: 'Today',
            title: "Grab Taxi",
            subTitle: "Sales Team",
            amount: "10.90",
            image: Assets.demo1,
          ),
          const TransactionTile(
            isHeader: false,
            // date: 'Today',
            title: "Singapore Airlines",
            subTitle: "Business Travel",
            amount: "500.09",
            image: Assets.demo,
          ),
        ],
      ),
      // child: ListView.builder(
      //     physics: NeverScrollableScrollPhysics(),
      //     controller: _scrollController,
      //     itemBuilder: (BuildContext context, int index) {
      //       return ListTile(title: Text("Item $index"));
      //     },
      //     itemCount: 100),
    );
  }

  Widget _getHeader() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Center(
        child: Container(
          width: 50,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(),
      body: RubberBottomSheet(
        scrollController: _scrollController,
        lowerLayer: const HeaderSection(),
        header: _getHeader(),

        // headerHeight: 50,
        upperLayer: _getUpperLayer(),
        animationController: controller,
      ),
    );
  }
}
