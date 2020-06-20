@JS()
library fingerprintjs;

import 'dart:async';
import 'package:js/js.dart';

@JS('Fingerprint2')
class _Fingerprint {
  external static dynamic get(Function action);
  external static dynamic x64hash128(String values, int seed);
}

@JS()
class FingerprintComponent {
  external dynamic get value;
  external String get key;
}

class Fingerprint {
  static Future<String> getHash() {
    final completer = Completer<String>();
    Timer(Duration(milliseconds: 500), () {
      _Fingerprint.get(allowInterop((components) {
        List values =
            components.map((component) => component.value.toString()).toList();
        String _hash = _Fingerprint.x64hash128(values.join(''), 31);
        completer.complete(_hash);
      }));
    });
    return completer.future;
  }
}
