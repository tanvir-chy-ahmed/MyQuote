// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_quote_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuotesListAdapter extends TypeAdapter<QuotesList> {
  @override
  final int typeId = 0;

  @override
  QuotesList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuotesList(
      quoteText: fields[0] as String,
      author: fields[1] as String,
      authorImg: fields[3] as String,
      category: fields[2] as String,
      quoteBGImg: fields[5] as String,
      isFvrt: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, QuotesList obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.quoteText)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.authorImg)
      ..writeByte(4)
      ..write(obj.isFvrt)
      ..writeByte(5)
      ..write(obj.quoteBGImg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuotesListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
