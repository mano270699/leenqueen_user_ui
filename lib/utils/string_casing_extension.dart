extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String toLowerCamelCase() {
    if (length <= 0) return '';
    List<String> splited = split('-');

    if (splited.length < 2) {
      throw Exception('Unsupported Notification Type');
    }
    String res = splited[0].toLowerCase();
    for (int i = 1; i < splited.length; i++) {
      res += splited[i].toCapitalized();
    }

    return res;

    //'${splited[0].toLowerCase()}${splited[1].toCapitalized()}';
  }

  String toNotificationTypeCase() {
    if (length <= 0) return '';

    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return '_${match.group(0)}';
    }).toUpperCase();
  }
}
