import 'package:hive/hive.dart';

part 'hive_quote_model.g.dart';

@HiveType(typeId: 0)
class QuotesList extends HiveObject {
  @HiveField(0)
  String quoteText;
  @HiveField(1)
  String author;
  @HiveField(2)
  String category;
  @HiveField(3)
  String authorImg;
  @HiveField(4)
  bool isFvrt;
  @HiveField(5)
  String quoteBGImg;

  QuotesList({
    required this.quoteText,
    required this.author,
    required this.authorImg,
    required this.category,
    required this.quoteBGImg,
    this.isFvrt = false,
  });
}
