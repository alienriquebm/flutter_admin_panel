import 'package:admin_panel/controllers/MenuController.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:admin_panel/screens/dashboard/dashboard_screen.dart';
import 'package:admin_panel/components/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Side menu only for large screens
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // it's mean it will takes 1/6 of the screen width
                child: SideMenu(),
              ),
            Expanded(
              // it's mean it will takes 5/6 of the screen width
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
