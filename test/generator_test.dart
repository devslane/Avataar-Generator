import 'package:avataar_generator/enums.dart';
import 'package:avataar_generator/generator.dart';
import 'package:test/test.dart';

void main() {
  test('ensure that method does not throw exception when value is missing from json', () {
    Map<String, dynamic> json = {
      "top": Top.shorthairfrizzle.toString()
    };
    expect(Options.fromMap(json).toString(), equals(Options(top: Top.shorthairfrizzle).toString()));
  });
}