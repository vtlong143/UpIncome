import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:up_income/app/modules/main/transaction/views/transaction_view.dart';
import 'package:up_income/app/themes/colors.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.count.value,
          children: [
            TransactionView(),
            TransactionView(),
            TransactionView(),
            TransactionView(),
            TransactionView()
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: colorBlue,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.account_balance_wallet,
                color: colorBlue,
              ),
              label: 'Transaction',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 4),
                child: Icon(Icons.add, color: Colors.black, size: 30),
              ),
              activeIcon: Container(
                margin: EdgeInsets.only(top: 4),
                child: Icon(Icons.add, color: colorBlue, size: 30),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_sharp,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.calendar_today_sharp,
                color: colorBlue,
              ),
              label: 'Planning',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: colorBlue,
              ),
              label: 'Account',
            ),
          ],
          selectedItemColor: colorBlue,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 10,
          currentIndex: controller.count.value,
          onTap: controller.changeTabIndex,
        ),
      ),
    );
  }
}
