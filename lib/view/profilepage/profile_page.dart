// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/view/widgets/custom_app_bar.dart';
import 'package:new_spotifyui_api/viewmodel/profile_view_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

import '../../core/constant_color.dart';
import '../../core/constant_padding.dart';
import 'profile_play_list_widget.dart';
import 'profile_text_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    final profileviewmodel =
        Provider.of<ProfileViewModelProvider>(context, listen: false);
    profileviewmodel.getDataUsersPlayList();
    super.initState();
  }

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
            Consumer<ProfileViewModelProvider>(
              builder: (context, value, child) {
                return value.isLoadingUserPlayList
                    ? ProfileBanner(
                        imageUrl: value.usersPlayList.images![0].url,
                        profileName:
                            value.usersPlayList.displayName ?? "Soroushnrz",
                        email: value.usersPlayList.email ??
                            "Soroushnorozyui@gmail.com",
                        following:
                            value.usersPlayList.followers!.total.toString(),
                        follow: "150",
                      )
                    : const CircularProgressIndicator();
              },
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

//Profile Banner
class ProfileBanner extends StatelessWidget {
  const ProfileBanner({
    Key? key,
    this.imageUrl,
    this.email,
    this.profileName,
    this.follow,
    this.following,
  }) : super(key: key);
  final String? imageUrl, profileName, email, follow, following;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.network(imageUrl!),
            /* Image.asset(
              Iimage.profile,
              fit: BoxFit.cover,
            ), */
          ),
          sizedBox10H(),
          ProfileTextWidget(text: email!, fontSize: 15),
          sizedBox10H(),
          ProfileTextWidget(
              text: profileName!, fontSize: 20, fontWeight: FontWeight.bold),
          sizedBox10H(),
          Padding(
            padding: IPadding.profilepage,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileTextWidget(
                        text: follow!,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    const ProfileTextWidget(text: "Followes", fontSize: 13),
                  ],
                ),
                sizedBox10H(),
                Column(
                  children: [
                    ProfileTextWidget(
                        text: following!,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    const ProfileTextWidget(text: "Followes", fontSize: 13),
                  ],
                ),
              ],
            ),
          ),
          sizedBox20H(),
        ],
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
