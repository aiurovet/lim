// Copyright (c) 2022, Alexander Iurovetski
// All rights reserved under MIT license (see LICENSE file)

/// Limit values (min and max) for Dart basic datatypes and char codes
///
class Lim {
  /// Highest byte value
  ///
  static final maxByte = 0xFF;

  /// Lowest byte value
  ///
  static final minByte = 0;

  /// Highest character code (Unicode)
  ///
  static final maxCharCode = 0x10FFFF;

  /// Highest character code for ASCII (7-bit)
  ///
  static final maxCharCodeAscii = 0x7F;

  /// Highest character code for Latin-1 (8-bit)
  ///
  static final maxCharCodeLatin1 = maxByte;

  /// Lowest character code
  ///
  static final minCharCode = 0;

  /// Highest date/time
  ///
  static final maxDateTime = DateTime(275760, 09, 13);

  /// Highest safe date/time (max - 1d to allow timezone conversions)
  ///
  static final maxDateTimeSafe = maxDateTime.add(Duration(days: -1));

  /// Lowest date/time (.year fails on values lower than this)
  ///
  static final minDateTime = DateTime(-271821, 4, 21);

  /// Lowest safe date/time (min + 1d to allow timezone conversions)
  ///
  static final minDateTimeSafe = minDateTime.add(Duration(days: 1));

  /// Highest double
  ///
  static const maxDouble = 1.7976931348623157e+308;

  /// Highest negative double
  ///
  static const maxDoubleNegative = -minDoublePositive;

  /// Lowest double
  ///
  static const minDouble = -maxDouble;

  /// Lowest positive double
  ///
  static const minDoublePositive = 5e-324;

  /// Highest integer
  ///
  static const maxInt = 9007199254740991;

  /// Lowest integer
  ///
  static const minInt = -9007199254740992;

  /// Highest numeric (same as double)
  ///
  static const num maxNum = maxDouble;

  /// Highest negative numeric (same as double)
  ///
  static const num maxNumNegative = -minNumPositive;

  /// Lowest numeric (same as double)
  ///
  static const num minNum = minDouble;

  /// Lowest positive numeric (same as double)
  ///
  static const num minNumPositive = minDoublePositive;
}
