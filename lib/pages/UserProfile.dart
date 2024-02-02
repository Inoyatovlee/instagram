import 'package:flutter/material.dart';

import 'package:instagram_user/config/imports.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  List imagas = [
    NetworkImages.women_2,
    NetworkImages.women,
    NetworkImages.women_1
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Username"),
            const SizedBox(width: 4),
            SvgPicture.asset(AppIcons.Verifi),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.bal)),
          IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.more)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserPeofileHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Username",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13)), //fontFamily: "Ubu"
                Text("Category/Genre text",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.grey.shade700)),
                const Text.rich(TextSpan(children: [
                  TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet, consectentur adipiscing elit, set do eiusmod tempor insiditund"),
                  TextSpan(
                      text: "#hashtag", style: TextStyle(color: Colors.blue))
                ])),
                Text(
                  "Link goes here",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.blue.shade900),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: Stack(
                          children: List.generate(3, (index) {
                        return Positioned(
                            right: 25.0 * index,
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(50)),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    CachedNetworkImageProvider(imagas[index]),
                              ),
                            ));
                      })),
                    ),
                    const SizedBox(width: 12),
                    const SizedBox(
                      width: 250,
                      child: Text.rich(TextSpan(children: [
                        TextSpan(text: "Followed by"),
                        TextSpan(
                            text: " username,username ",
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(text: "and "),
                        TextSpan(
                            text: "100 others",
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ])),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.maxFinite,
                  child: Button(
                    text: "Follow",
                    textColor: Colors.white,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 9),
                Row(
                  children: [
                    Expanded(
                      child: Button(
                          text: "Message",
                          color: Colors.grey.shade300,
                          textColor: Colors.black),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Button(
                          text: "Subscribe",
                          color: Colors.grey.shade300,
                          textColor: Colors.black),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Button(
                          text: "Contact",
                          color: Colors.grey.shade300,
                          textColor: Colors.black),
                    ),
                    const SizedBox(width: 6),
                    Button(
                        icon: Icons.group_add_sharp,
                        color: Colors.grey.shade300,
                        textColor: Colors.black),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class Statics extends StatelessWidget {
  String count;
  String text;

  Statics({
    super.key,
    required this.count,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontWeight: FontWeight.w600)),
        Text(text, style: const TextStyle(fontWeight: FontWeight.w400)),
      ],
    );
  }
}
