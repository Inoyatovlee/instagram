import 'package:instagram_user/config/imports.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Username",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 13)), //fontFamily: "Ubu"
        Text("Category/Genre text",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.grey.shade700)),
        const Text.rich(TextSpan(children: [
          TextSpan(
              text:
                  "Lorem ipsum dolor sit amet, consectentur adipiscing elit, set do eiusmod tempor insiditund"),
          TextSpan(text: "#hashtag", style: TextStyle(color: Colors.blue))
        ])),
        Text(
          "Link goes here",
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.blue.shade900),
        ),
      ],
    );
  }
}
