import 'package:instagram_user/config/imports.dart';

class HomeController extends GetxController {
  List stories = [
    {"img": NetworkImages.Water, "name": "Jordi"},
    {"img": NetworkImages.women, "name": "Dildor"},
    {"img": NetworkImages.men, "name": "Run"},
    {"img": NetworkImages.women_2, "name": "Maeshil"},
    {"img": NetworkImages.dog_2, "name": "Jordi"},
    {"img": NetworkImages.women_1, "name": "Dildor"},
    {"img": NetworkImages.car, "name": "Run"},
    {"img": NetworkImages.Water, "name": "Maeshil"},
  ];
  List posts = [
    {
      "profile_img": NetworkImages.dog,
      "post_img": NetworkImages.dog,
      "name": "Ruffles",
      "likes_count": 10,
      "username": "Username",
      "Description":
          "This is my first app, so I'm really excited but it's very challenging",
      "comments_count": 19
    },
    {
      "profile_img": NetworkImages.women,
      "post_img": NetworkImages.women,
      "name": "Coolboy",
      "likes_count": 1460,
      "username": "Username",
      "Description":
          "This is my first app, so I'm really excited but it's very challenging",
      "comments_count": 176
    },
    {
      "profile_img": NetworkImages.men,
      "post_img": NetworkImages.men,
      "name": "Gogo",
      "likes_count": 56,
      "username": "Username",
      "Description":
          "This is my first app, so I'm really excited but it's very challenging",
      "comments_count": 3
    }
  ];
}
