import 'dart:ui';

class Helpers {
  static cutLongText(String name, int length) {
    if (name.length > length) {
      return '${name.substring(0, length)}...';
    }
    return name;
  }
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
