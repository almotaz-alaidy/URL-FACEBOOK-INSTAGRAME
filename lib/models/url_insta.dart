// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InstaUrl extends StatelessWidget {
  InstaUrl({
    required this.myplatformIcon,
    required this.myplatformSubTitle,
    required this.myplatformTitle,
  });

  String? myplatformTitle;
  String? myplatformSubTitle;
  IconData? myplatformIcon;

  final Uri _url2 = Uri.parse('https://www.instagram.com/almotazalaidy/');

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw 'Could not launch $_url2';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchUrl2,
      child: Container(
          child: ListTile(
        leading: Icon(myplatformIcon),
        title: Text("$myplatformTitle"),
        subtitle: Text("$myplatformSubTitle"),
      )),
    );
  }
}
