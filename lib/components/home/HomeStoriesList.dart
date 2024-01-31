import 'package:instagram_user/config/imports.dart';

class HomeStoriesList extends StatelessWidget {
  const HomeStoriesList({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(homeController.stories.length, (index) {
        var item = homeController.stories[index];
        return Row(
          children: [
            HomeStoriesItem(
              name: item['name'],
              img: item['img'],
            ),
            const SizedBox(width: 12)
          ],
        );
      }),
    );
  }
}
