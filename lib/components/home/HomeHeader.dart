import 'package:instagram_user/config/imports.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      child: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.logo),
              const SizedBox(width: 8),
              const Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          const Spacer(),
          Row(
            children: [
              SvgPicture.asset(AppIcons.like),
              SizedBox(width: 24),
              SvgPicture.asset(AppIcons.messenger),
              SizedBox(width: 24),
              SvgPicture.asset(AppIcons.plus),
            ],
          )
        ],
      ),
    );
  }
}
