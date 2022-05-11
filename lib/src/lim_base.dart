// Copyright (c) 2022, Alexander Iurovetski
// All rights reserved under MIT license (see LICENSE file)

/// Limit values (min and max) for Dart basic datatypes and char codes
///
class Lim {
  /// Highest byte value
  ///
  static const maxByte = 0xFF;

  /// Lowest byte value
  ///
  static const minByte = 0;

  /// Highest character code for the Unicode set
  ///
  static const maxCharCode = 0x10FFFF;

  /// Highest character code for the ASCII set (7-bit)
  ///
  static const maxCharCodeAscii = 0x7F;

  /// Highest character code for the Basic Multilingual Plane (16-bit)
  ///
  static const maxCharCodeBmp = 0xFFFF;

  /// Highest character code for the Latin-1 set (8-bit)
  ///
  static const maxCharCodeLatin1 = maxByte;

  /// Lowest character code
  ///
  static const minCharCode = 0;

  /// Highest date/time
  ///
  static final maxDateTime =
      DateTime.fromMicrosecondsSinceEpoch(maxMicrosecondsSinceEpoch);

  /// Variation of [maxDateTime] capable of TZ conversions
  ///
  static final maxDateTimeSafe =
      DateTime.fromMicrosecondsSinceEpoch(maxMicrosecondsSinceEpochSafe);

  /// Lowest date/time
  ///
  static final minDateTime =
      DateTime.fromMicrosecondsSinceEpoch(minMicrosecondsSinceEpoch);

  /// Variation of [minDateTime] capable of TZ conversions
  ///
  static final minDateTimeSafe =
      DateTime.fromMicrosecondsSinceEpoch(minMicrosecondsSinceEpochSafe);

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

  /// Highest portable integer
  ///
  static const maxInt = 9007199254740991;

  /// Lowest portable integer
  ///
  static const minInt = -9007199254740992;

  /// Highest number of microseconds representing a date/time value
  ///
  static const maxMicrosecondsSinceEpoch =
      (Duration.microsecondsPerDay * 100 * 1000 * 1000);

  /// Variation of [maxMicrosecondsSinceEpoch] capable of TZ conversions
  ///
  static const maxMicrosecondsSinceEpochSafe =
      (maxMicrosecondsSinceEpoch - Duration.microsecondsPerDay);

  /// Lowest number of microseconds representing a date/time value
  ///
  static const minMicrosecondsSinceEpoch = -maxMicrosecondsSinceEpoch;

  /// Variation of [minMicrosecondsSinceEpoch] capable of TZ conversions
  ///
  static const minMicrosecondsSinceEpochSafe =
      (minMicrosecondsSinceEpoch + Duration.microsecondsPerDay);

  /// Highest number of milliseconds representing a date/time value
  ///
  static const maxMillisecondsSinceEpoch = (maxMicrosecondsSinceEpoch ~/ 1000);

  /// Variation of [maxMillisecondsSinceEpoch] capable of TZ conversions
  ///
  static const maxMillisecondsSinceEpochSafe =
      (maxMicrosecondsSinceEpochSafe ~/ 1000);

  /// Lowest number of milliseconds representing a date/time value
  ///
  static const minMillisecondsSinceEpoch = (minMicrosecondsSinceEpoch ~/ 1000);

  /// Variation of [minMillisecondsSinceEpoch] capable of TZ conversions
  ///
  static const minMillisecondsSinceEpochSafe =
      (minMicrosecondsSinceEpochSafe ~/ 1000);

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
