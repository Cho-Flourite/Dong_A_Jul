import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_announcement/button_dongari_announcement.dart';
import 'package:flutter/material.dart';

class DongariAnnouncement extends StatelessWidget {
  const DongariAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
        DongariAnnouncementButton(),
      ],
    );
  }
}
