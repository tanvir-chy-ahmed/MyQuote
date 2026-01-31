import 'package:flutter/material.dart';
import 'package:myquote/data/local/database/getbox.dart';

import '../../data/local/database/models/hive_quote_model.dart';

class HiveProvider extends ChangeNotifier {

  Future<void> delete(dynamic key, BuildContext context) async {
    final box = Boxes.getData();
    await box.delete(key);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Quote deleted successfully"),
        backgroundColor: Color(0xFF8BAE66),
      ),
    );

    notifyListeners();
  }

}
