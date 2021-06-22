import 'package:admin_panel/components/recent_files.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:admin_panel/constants.dart';
import 'package:admin_panel/components/header.dart';
import 'package:admin_panel/components/storage_detail.dart';
import 'package:admin_panel/components/my_files.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                        ),
                      if (Responsive.isMobile(context)) StorageDetail(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetail(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
