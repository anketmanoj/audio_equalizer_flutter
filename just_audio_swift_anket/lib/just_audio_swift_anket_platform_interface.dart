import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'just_audio_swift_anket_method_channel.dart';

abstract class JustAudioSwiftAnketPlatform extends PlatformInterface {
  /// Constructs a JustAudioSwiftAnketPlatform.
  JustAudioSwiftAnketPlatform() : super(token: _token);

  static final Object _token = Object();

  static JustAudioSwiftAnketPlatform _instance = MethodChannelJustAudioSwiftAnket();

  /// The default instance of [JustAudioSwiftAnketPlatform] to use.
  ///
  /// Defaults to [MethodChannelJustAudioSwiftAnket].
  static JustAudioSwiftAnketPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [JustAudioSwiftAnketPlatform] when
  /// they register themselves.
  static set instance(JustAudioSwiftAnketPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
