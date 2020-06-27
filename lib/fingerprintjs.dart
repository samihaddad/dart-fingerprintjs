@JS()
library fingerprintjs;

import 'dart:async';
import 'package:js/js.dart';

part 'src/options.dart';

@JS('Fingerprint2')
class _Fingerprint {
  external static dynamic get(Options options, Function action);
  external static dynamic x64hash128(String values, int seed);
}

@JS()
class FingerprintComponent {
  external String get key;
  external dynamic get value;
}

class Fingerprint {
  static Future<List<FingerprintComponent>> get({Options options}) {
    final completer = Completer<List<FingerprintComponent>>();
    Timer(Duration(milliseconds: 500), () {
      _Fingerprint.get(options, allowInterop((components) {
        completer.complete(components.cast<FingerprintComponent>());
      }));
    });
    return completer.future;
  }

  static String x64hash128(String key, int seed) {
    return _Fingerprint.x64hash128(key, seed);
  }

  static Future<String> getHash() async {
    var values = await Fingerprint.get();
    return Fingerprint.x64hash128(values.join(''), 31);
  }
}
