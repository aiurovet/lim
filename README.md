A set of maximum and minimum constant values for Dart datatypes and character codes.

## Features

Helper min/max values most developers highly anticipate being available. Especially me.

## Usage

The working example which can also be found in the repository in `example/lim_example.dart`

```dart
import 'package:lim/lim.dart';

void main() {
  print('''
    CharCode: <${Lim.minCharCode}>..<${Lim.maxCharCode.toRadixString(0x10).toUpperCase()}>
    Double: <${Lim.minDouble}>..<${Lim.maxDoubleNegative}>,0,<${Lim.minDoublePositive}>..<${Lim.maxDouble}>
    DateTime: <${Lim.minDateTime}>..<${Lim.maxDateTime}>
    Int: <${Lim.minInt}>..<${Lim.maxInt}>
  '''
      .replaceAll(RegExp(r'^\s+', multiLine: true), ''));
}
```
