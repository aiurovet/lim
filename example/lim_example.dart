import 'package:lim/lim.dart';

void main() {
  print('''
    MaxAscii:  <${Lim.maxCharCodeAscii.toRadixString(0x10).toUpperCase()}>
    MaxLatin1: <${Lim.maxCharCodeLatin1.toRadixString(0x10).toUpperCase()}>
    MaxBmp:    <${Lim.maxCharCodeBmp.toRadixString(0x10).toUpperCase()}>
    Byte:      <${Lim.minByte}>..<${Lim.maxByte.toRadixString(0x10).toUpperCase()}>
    CharCode:  <${Lim.minCharCode}>..<${Lim.maxCharCode.toRadixString(0x10).toUpperCase()}>
    Double:    <${Lim.minDouble}>..<${Lim.maxDoubleNegative}>,0,<${Lim.minDoublePositive}>..<${Lim.maxDouble}>
    Num:       <${Lim.minNum}>..<${Lim.maxNumNegative}>,0,<${Lim.minNumPositive}>..<${Lim.maxNum}>
    Int:       <${Lim.minInt}>..<${Lim.maxInt}>
    DateTime:  <${Lim.minDateTime}>..<${Lim.maxDateTime}>
    Mcs:       <${Lim.minMicrosecondsSinceEpoch}>..<${Lim.maxMicrosecondsSinceEpoch}>
    McsSafe:   <${Lim.minMicrosecondsSinceEpochSafe}>..<${Lim.maxMicrosecondsSinceEpochSafe}>
  '''
      .replaceAll(RegExp(r'^\s+', multiLine: true), ''));
}
