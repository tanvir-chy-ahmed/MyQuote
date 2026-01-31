import 'dart:convert';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../../data/local/database/models/hive_quote_model.dart';

class HiveBackupService {
  /// EXPORT full Hive box data → JSON string
  static Future<String> exportToJson(String boxName) async {
    final box = Hive.box<QuotesList>(boxName);

    // Convert list of Hive objects → list of JSON maps
    final List<Map<String, dynamic>> list = box.values.map((item) {
      return {
        "quoteText": item.quoteText,
        "author": item.author,
        "category": item.category,
        "authorImg": item.authorImg,
        "isFvrt": item.isFvrt,
        "quoteBGImg": item.quoteBGImg,
      };
    }).toList();

    print(jsonEncode(list));
    return jsonEncode(list);
  }

  /// SAVE JSON string → file inside app directory
  static Future<File> saveJsonToDownloads(String jsonData, String fileName) async {
    // Android public Downloads directory
    final downloadsPath = "/storage/emulated/0/Download";

    final dir = Directory(downloadsPath);

    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }

    final file = File("$downloadsPath/$fileName.json");

    return file.writeAsString(jsonData);
  }


  /// DIRECT: export + save → returns the JSON file
  static Future<File> backupHiveBox(String boxName) async {
    final json = await exportToJson(boxName);
    final file = await saveJsonToDownloads(json, '${boxName}_backup');
    return file;
  }
}
