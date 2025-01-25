import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/app/presentation/utils/validator.dart';

void main() {
  test('is_valid_email_test', () {
    expect(isValidEmail('text'), false);
    expect(isValidEmail('text@test.com'), true);
    expect(isValidEmail('text#@test.com'), false);
    expect(isValidEmail('1text@test.com'), false);
    expect(isValidEmail('te2.xªt@test.com'), false);
    expect(isValidEmail('meedu.app@test.com'), true);
  });
  test('is_valid_password_test', () {
    var errors = isValidPassword('text');
    expect(errors.length, 3);

    errors = isValidPassword('text');
    expect(errors.contains(PasswordErrors.atLeast1Number), true);

    errors = isValidPassword('text');
    expect(errors.contains(PasswordErrors.atLeast1UpperCase), true);

    errors = isValidPassword('text');
    expect(errors.contains(PasswordErrors.atLeast6Characters), true);

    errors = isValidPassword('text eer');
    expect(errors.contains(PasswordErrors.whiteSpaces), true);

    errors = isValidPassword('text');
    expect(errors.isEmpty, true);
  });
}
