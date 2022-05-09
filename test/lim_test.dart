// Copyright (c) 2022, Alexander Iurovetski
// All rights reserved under MIT license (see LICENSE file)

import 'package:lim/lim.dart';
import 'package:intl/intl.dart';
import 'package:test/test.dart';

/// Unit tests for all Lim constants
///
void main() {
  final prefix = 'Lim -';

  group('$prefix Char Code -', () {
    test('last character', () {
      expect(String.fromCharCode(Lim.maxCharCode), '􏿿');
    });
    test('highest', () {
      expect(Lim.maxCharCode.toRadixString(0x10).toLowerCase(), '10ffff');
    });
    test('highest ASCII', () {
      expect(Lim.maxCharCodeAscii.toRadixString(0x10).toLowerCase(), '7f');
    });
    test('highest Latin1', () {
      expect(Lim.maxCharCodeLatin1.toRadixString(0x10).toLowerCase(), 'ff');
    });
    test('lowest', () {
      expect(Lim.minCharCode.toRadixString(0x10).toLowerCase(), '0');
    });
  });
  group('$prefix DateTime -', () {
    final f = DateFormat('y-MM-dd');
    test('max', () {
      expect(Lim.maxDateTime.year, 275760);
      expect(f.format(Lim.maxDateTime), '275760-09-13');
    });
    test('max safe', () {
      expect(f.format(Lim.maxDateTimeSafe), '275760-09-12');
    });
    test('min safe', () {
      expect(Lim.minDateTimeSafe.day, 22);
    });
    test('min', () {
      expect(Lim.minDateTime.year, -271821);
    });
  });
  group('$prefix Double -', () {
    test('max', () {
      expect(Lim.maxDouble.toString(), '1.7976931348623157e+308');
    });
    test('max negative', () {
      expect(Lim.maxDoubleNegative.toString(), '-5e-324');
    });
    test('min', () {
      expect(Lim.minDouble.toString(), '-1.7976931348623157e+308');
    });
    test('min positive', () {
      expect(Lim.minDoublePositive.toString(), '5e-324');
    });
  });
  group('$prefix Int -', () {
    test('max', () {
      expect(Lim.maxInt.toString(), '9007199254740991');
    });
    test('min', () {
      expect(Lim.minInt.toString(), '-9007199254740992');
    });
  });
  group('$prefix Num -', () {
    test('max', () {
      expect(Lim.maxNum, Lim.maxDouble);
    });
    test('max negative', () {
      expect(Lim.maxNumNegative, Lim.maxDoubleNegative);
    });
    test('min', () {
      expect(Lim.minNum, Lim.minDouble);
    });
    test('min positive', () {
      expect(Lim.minNumPositive, Lim.minDoublePositive);
    });
  });
}
