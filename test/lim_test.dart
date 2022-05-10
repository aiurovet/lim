// Copyright (c) 2022, Alexander Iurovetski
// All rights reserved under MIT license (see LICENSE file)

import 'package:lim/lim.dart';
import 'package:test/test.dart';

/// Unit tests for all Lim constants
///
void main() {
  final p = 'Lim -';

  group('$p Byte -', () {
    test('max', () {
      expect(Lim.maxByte.toString(), '255');
    });
    test('min', () {
      expect(Lim.minByte.toString(), '0');
    });
  });
  group('$p Char Code -', () {
    test('last character', () {
      expect(String.fromCharCode(Lim.maxCharCode), '􏿿');
    });
    test('highest', () {
      expect(Lim.maxCharCode.toRadixString(0x10).toLowerCase(), '10ffff');
    });
    test('highest ASCII', () {
      expect(Lim.maxCharCodeAscii.toRadixString(0x10).toLowerCase(), '7f');
    });
    test('highest BMP', () {
      expect(Lim.maxCharCodeBmp.toRadixString(0x10).toLowerCase(), 'ffff');
    });
    test('highest Latin1', () {
      expect(Lim.maxCharCodeLatin1.toRadixString(0x10).toLowerCase(), 'ff');
    });
    test('lowest', () {
      expect(Lim.minCharCode.toRadixString(0x10).toLowerCase(), '0');
    });
  });
  group('$p DateTime -', () {
    test('max', () {
      expect(Lim.maxDateTime.year, 275760);
      expect(Lim.maxDateTime.month, 9);
      expect(Lim.maxDateTime.day, 13);
    });
    test('max safe', () {
      expect(Lim.maxDateTimeSafe.year, 275760);
      expect(Lim.maxDateTimeSafe.month, 9);
      expect(Lim.maxDateTimeSafe.day, 12);
    });
    test('min safe', () {
      expect(Lim.minDateTimeSafe.year, -271821);
      expect(Lim.minDateTimeSafe.month, 4);
      expect(Lim.minDateTimeSafe.day, 21);
    });
    test('min', () {
      expect(Lim.minDateTime.year, -271821);
      expect(Lim.minDateTime.month, 4);
      expect(Lim.minDateTime.day, 20);
    });
  });
  group('$p Double -', () {
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
  group('$p Int -', () {
    test('max', () {
      expect(Lim.maxInt.toString(), '9007199254740991');
    });
    test('min', () {
      expect(Lim.minInt.toString(), '-9007199254740992');
    });
  });
  group('$p Num -', () {
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
