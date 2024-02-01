import 'package:instagram_user/config/imports.dart';

class Button extends StatelessWidget {
  Color color, textColor;
  String? text;
  IconData? icon;
  Button({
    super.key,
    required this.color,
    required this.textColor,
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(3))),
      child: text == null
          ? Icon(icon, size: 20)
          : Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
            ),
    );
  }
}
