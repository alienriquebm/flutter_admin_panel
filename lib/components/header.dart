import 'package:admin_panel/components/profile_card.dart';
import 'package:admin_panel/controllers/MenuController.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:admin_panel/constants.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuController>().controlMenu,
            icon: Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context)) Spacer(flex: Responsive.isDesktop(context) ? 3 : 1),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            padding: EdgeInsets.all(defaultPadding * 0.75),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                )),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
        ),
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
