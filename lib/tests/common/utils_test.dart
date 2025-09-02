import 'package:flutter_test/flutter_test.dart';

import '../lib/common/utils/helpers.dart';

void main() {
  test('capitalize works', () {
    expect(Helpers.capitalize('hello'), 'Hello');
  });
}
