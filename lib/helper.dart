import 'package:intl/intl.dart';

final Function formatDate = (date) {
  return DateFormat('dd.MM.yyyy').format(date).toString();
};

final Map<String, String> typeMap = {
  "digestion": "digestion",
  "other": "other",
  "food": "food",
};
