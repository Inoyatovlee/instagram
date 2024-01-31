import 'package:instagram_user/config/imports.dart';

class HomeAddStories extends StatelessWidget {
  const HomeAddStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 32,
              backgroundImage: CachedNetworkImageProvider(NetworkImages.dog),
            ),
            Positioned(
                right: -5,
                bottom: -2,
                child: SvgPicture.asset(
                  AppIcons.add,
                  width: 25,
                ))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Text("Ruffles")
      ],
    );
  }
}
