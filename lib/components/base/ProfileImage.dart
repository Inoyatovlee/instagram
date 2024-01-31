import 'package:instagram_user/config/imports.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage({super.key, required this.img, required this.radius});

  final String img;
  double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(35),
            gradient: LinearGradient(colors: [sariq, pushti, qizil])),
        child: Padding(
            padding: const EdgeInsets.all(3.00),
            child: Container(
              padding: const EdgeInsets.all(3.00),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              child: CircleAvatar(
                radius: radius,
                backgroundImage: CachedNetworkImageProvider(img),
              ),
            )));
  }
}
