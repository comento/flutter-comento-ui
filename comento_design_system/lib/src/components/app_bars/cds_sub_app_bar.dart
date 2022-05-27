import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsSubAppBar extends StatelessWidget {
  final TabController controller;
  final List<String> items;
  final void Function(int index) onTap;

  CdsSubAppBar({
    required this.controller,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: CdsUI.headerHeight),
      height: CdsUI.subHeaderHeight,
      decoration: BoxDecoration(
        color: CdsColors.white,
        border: Border(
          bottom: BorderSide(color: CdsColors.grey100),
        ),
      ),
      child: TabBar(
        controller: controller,
        padding: EdgeInsets.only(left: CdsUI.widthPadding),
        labelPadding: EdgeInsets.symmetric(horizontal: 12),
        isScrollable: true,
        overlayColor: MaterialStateProperty.all(CdsColors.white),
        labelColor: CdsColors.grey900,
        unselectedLabelColor: CdsColors.grey400,
        labelStyle: CdsTextStyles.bodyText2,
        indicatorColor: CdsColors.grey700,
        tabs: [
          for (int i = 0; i < items.length; i++) Tab(text: items[i]),
        ],
        onTap: onTap,
      ),
    );
  }
}
