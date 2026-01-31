import 'package:hive/hive.dart';
import 'package:myquote/core/constants/constants_strings.dart';
import 'package:myquote/data/local/database/models/hive_quote_model.dart';

class Boxes {
  static Box<QuotesList> getData() => Hive.box<QuotesList>(AppString.DB_NAME);
}
