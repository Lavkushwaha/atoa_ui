import 'package:atoa_ui/utils/assets.dart';
import 'package:atoa_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle bottomNavigationText = TextStyle(
    fontSize: 10,
    height: 2,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        changeIndex(index);
      },
      selectedItemColor: AppColors.active,
      unselectedItemColor: AppColors.deactive,
      selectedLabelStyle: bottomNavigationText,
      unselectedLabelStyle: bottomNavigationText,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.walletIcon,
            color: AppColors.active,
            height: 20,
            width: 20,
          ),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.peoplesIcon,
            // color: AppColors.active,
            color: AppColors.deactive,

            height: 20,
            width: 20,
          ),
          label: 'Teams',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.moneyIcon,
            // color: AppColors.active,
            color: AppColors.deactive,

            height: 20,
            width: 20,
          ),
          label: 'Requests',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.moreIcon,
            // color: AppColors.active,

            height: 12,
            width: 20,
            color: AppColors.deactive,
          ),
          label: 'More',
        ),
      ],
    );
  }
}
