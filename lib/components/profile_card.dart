import 'package:admin_panel/controllers/ProfileCardController.dart';
import 'package:flutter/material.dart';
import 'package:admin_panel/constants.dart';
import 'package:admin_panel/responsive.dart';
import 'package:provider/provider.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isDropdownOpen = context.watch<ProfileCardController>().isDropdownOpen;
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.white10)),
      child: InkWell(
        key: context.read<ProfileCardController>().actionKey,
        onTap: () => context.read<ProfileCardController>().toggleDropdown(context),
        child: Row(
          children: [
            Image.asset(
              'assets/images/profile_pic.jpg',
              height: 38,
            ),
            if (!Responsive.isMobile(context))
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Text('Ali Briceño'),
              ),
            Icon(_isDropdownOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }
}
