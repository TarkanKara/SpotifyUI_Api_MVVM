// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/view/widgets/custom_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import 'profile_play_list_widget.dart';
import 'profile_text_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Icolor.profileBackgroundColor,
      appBar: CustomAppBar(
        title: Text("Profile",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        actions: const [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      Iimage.profile,
                      fit: BoxFit.cover,
                    ),
                  ),
                  sizedBox10H(),
                  const ProfileTextWidget(
                      text: "Soroushnorozyui@gmail.com", fontSize: 15),
                  sizedBox10H(),
                  const ProfileTextWidget(
                      text: "Soroushnrz",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  sizedBox10H(),
                  Padding(
                    padding: IPadding.profilepage,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ProfileTextWidget(
                                text: "778",
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            ProfileTextWidget(text: "Followes", fontSize: 13),
                          ],
                        ),
                        sizedBox10H(),
                        Column(
                          children: const [
                            ProfileTextWidget(
                                text: "243",
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            ProfileTextWidget(text: "Followes", fontSize: 13),
                          ],
                        ),
                      ],
                    ),
                  ),
                  sizedBox20H(),
                ],
              ),
            ),
            sizedBox3H(),
            Padding(
              padding: IPadding.profilPlayList,
              child: Row(
                children: const [
                  ProfileTextWidget(
                      text: "Public playlists",
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
            sizedBox10H(),
            Padding(
              padding: IPadding.profilPlayList2,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return const PublicPlayListWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  //Widhts
  SizedBox sizedBox10W() => const SizedBox(width: 10);
  SizedBox sizedBox50W() => const SizedBox(width: 50);

  //Heights
  SizedBox sizedBox10H() => SizedBox(height: 1.5.h);
  SizedBox sizedBox20H() => SizedBox(height: 2.5.h);
  SizedBox sizedBox3H() => SizedBox(height: 3.h);
}
