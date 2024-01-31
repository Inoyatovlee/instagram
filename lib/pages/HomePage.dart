import 'package:instagram_user/config/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const HomeAddStories(),
                      const SizedBox(width: 12),
                      HomeStoriesList(homeController: homeController)
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.pink,
            ),
            Column(
              children: List.generate(homeController.posts.length, (index) {
                return Post(post: homeController.posts[index]);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
