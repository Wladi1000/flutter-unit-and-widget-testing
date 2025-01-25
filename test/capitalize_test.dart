import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/app/presentation/utils/capitalize.dart';

void main() {
  test('capitalize should capitalize the first letter of a string', () {
    final result = capitalize('hello');
    expect(result, 'Hello');
  });

  test('capitalize should return an empty string if input is empty', () {
    final result = capitalize('');
    expect(result, '');
  });

  test('capitalize should handle strings with only one character', () {
    final result = capitalize('a');
    expect(result, 'A');
  });

  test('capitalize should not change the rest of the string', () {
    final result = capitalize('hELLO');
    expect(result, 'Hello');
  });
}