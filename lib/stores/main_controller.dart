import 'package:instagram_user/config/imports.dart';

class MainController extends GetxController {
  int curentPage = 1;

  List menus = [
    {"id": 1, "icon": AppIcons.home},
    {"id": 2, "icon": AppIcons.search},
    {"id": 3, "icon": AppIcons.media},
    {"id": 4, "icon": AppIcons.storybook},
    {"id": 5, "icon": AppIcons.storybook},
  ];
  void chooseCurrent(int index) {
    curentPage = index;
    update();
  }

  Widget choosePage(int index) {
    switch (index) {
      case 1:
        return const HomePage();
      case 2:
        return const SearchPage();
      case 3:
        return const MediaPage();
      case 4:
        return const BookPage();
      case 5:
        return const UserProfile();
    }
    return Container();
  }
}
