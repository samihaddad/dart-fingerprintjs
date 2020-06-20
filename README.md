# Dart FingerprintJS

[FingerprintJS](https://github.com/Valve/fingerprintjs2) wrapper for Dart

## Getting Started

[![pub package](https://img.shields.io/pub/v/fingerprintjs.svg)](https://pub.dartlang.org/packages/fingerprintjs)

Add script in index.html before importing main.dart.js:
```html
<script src="//cdnjs.cloudflare.com/ajax/libs/fingerprintjs2/2.1.0/fingerprint2.min.js"></script>
```


## Usage
```dart
import 'package:fingerprintjs/fingerprint.dart';

String fingerprint = await Fingerprint.getHash();

```

## Issues and feedback

Please file [issues](https://github.com/samihaddad/dart-fingerprintjs/issues/new) to send feedback or report a bug.