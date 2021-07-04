import 'dart:html';

import 'package:fingerprintjs/fingerprintjs.dart';

void main() async {
  querySelector('#fingerprint')?.text = await Fingerprint.getHash();
}
