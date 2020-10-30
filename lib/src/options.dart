// ignore_for_file: public_member_api_docs

part of fingerprintjs;

@JS()
@anonymous
class FontOptions {
  external String get swfContainerId;
  external String get swfPath;
  external List<String> get userDefinedFonts;
  external bool get extendedJsFonts;

  external factory FontOptions({
    String swfContainerId,
    String swfPath,
    List<String> userDefinedFonts,
    bool extendedJsFonts,
  });
}

@JS()
@anonymous
class ScreenOptions {
  external bool get detectScreenOrientation;

  external factory ScreenOptions({bool detectScreenOrientation});
}

@JS()
@anonymous
class AudioOptions {
  external num get timeout;
  external bool get excludeIOS11;

  external factory AudioOptions({num timeout, bool excludeIOS11});
}

@JS()
@anonymous
class PluginOptions {
  external List get sortPluginsFor;
  external bool get excludeIE;

  external factory PluginOptions({List sortPluginsFor, bool excludeIE});
}

@JS()
@anonymous
class Options {
  external Function get preprocessor;
  external AudioOptions get audio;
  external FontOptions get fonts;
  external ScreenOptions get screen;
  external PluginOptions get plugin;
  external List get extraComponents;

  external factory Options({
    Function preprocessor,
    AudioOptions audio,
    FontOptions fonts,
    ScreenOptions screen,
    PluginOptions plugins,
    List extraComponents,
  });
}
