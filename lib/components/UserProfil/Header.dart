import 'package:instagram_user/config/imports.dart';

class UserPeofileHeader extends StatelessWidget {
  const UserPeofileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ProfileImage(img: NetworkImages.dog, radius: 35),
          const SizedBox(width: 60),
          Row(
            children: [
              Statics(text: "Posts", count: "451"),
              const SizedBox(width: 24),
              Statics(text: "Followers", count: "3.051"),
              const SizedBox(width: 24),
              Statics(text: "Folowing", count: "1.451"),
            ],
          ),
        ],
      ),
    );
  }
}
