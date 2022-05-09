import 'package:lim/lim.dart';

void main() {
  print('''
    Byte:      <${Lim.minByte}>..<${Lim.maxByte.toRadixString(0x10).toUpperCase()}>
    CharCode:  <${Lim.minCharCode}>..<${Lim.maxCharCode.toRadixString(0x10).toUpperCase()}>
    MaxAscii:  <${Lim.maxCharCodeAscii.toRadixString(0x10).toUpperCase()}>
    MaxLatin1: <${Lim.maxCharCodeLatin1.toRadixString(0x10).toUpperCase()}>
    Double:    <${Lim.minDouble}>..<${Lim.maxDoubleNegative}>,0,<${Lim.minDoublePositive}>..<${Lim.maxDouble}>
    Num:       <${Lim.minNum}>..<${Lim.maxNumNegative}>,0,<${Lim.minNumPositive}>..<${Lim.maxNum}>
    Int:       <${Lim.minInt}>..<${Lim.maxInt}>
    DateTime:  <${Lim.minDateTime}>..<${Lim.maxDateTime}>
  '''
      .replaceAll(RegExp(r'^\s+', multiLine: true), ''));
}
