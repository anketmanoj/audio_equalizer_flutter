import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'just_audio_swift_anket_platform_interface.dart';

/// An implementation of [JustAudioSwiftAnketPlatform] that uses method channels.
class MethodChannelJustAudioSwiftAnket extends JustAudioSwiftAnketPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('just_audio_swift_anket');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
