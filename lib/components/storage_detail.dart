import 'package:admin_panel/components/chart.dart';
import 'package:admin_panel/components/storage_info_card.dart';
import 'package:admin_panel/constants.dart';
import 'package:flutter/material.dart';

class StorageDetail extends StatelessWidget {
  const StorageDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            title: 'Documents Files',
            amountOfFiles: '1.3 GB',
            svgSrc: 'assets/icons/Documents.svg',
            numOfFiles: 1329,
          ),
          StorageInfoCard(
            title: 'Media Files',
            amountOfFiles: '15.3 GB',
            svgSrc: 'assets/icons/media.svg',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Other Files',
            amountOfFiles: '15.3 GB',
            svgSrc: 'assets/icons/folder.svg',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Unknown',
            amountOfFiles: '15.3 GB',
            svgSrc: 'assets/icons/unknown.svg',
            numOfFiles: 1328,
          ),
        ],
      ),
    );
  }
}
