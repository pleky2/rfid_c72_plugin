import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bda_c72_plugin_platform_interface.dart';

/// An implementation of [BdaC72PluginPlatform] that uses method channels.
class MethodChannelBdaC72Plugin extends BdaC72PluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bda_c72_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
