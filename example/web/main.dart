import 'dart:html';

import 'package:fingerprintjs/fingerprint.dart';

void main() async {
  querySelector('#fingerprint').text = await Fingerprint.getHash();
}
