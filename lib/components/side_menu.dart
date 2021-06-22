import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/logo.png")),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_dashbord.svg',
              title: 'Dashboard',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_tran.svg',
              title: 'Transaction',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_task.svg',
              title: 'Task',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_doc.svg',
              title: 'Documents',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_store.svg',
              title: 'Store',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_notification.svg',
              title: 'Notification',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_profile.svg',
              title: 'Profile',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: 'assets/icons/menu_setting.svg',
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.onPress,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(title,
          style: TextStyle(
            color: Colors.white54,
          )),
    );
  }
}
